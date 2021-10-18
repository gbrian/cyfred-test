import { TABLE_TYPE } from '../sql/constants'
import neo4j from 'neo4j-driver'

export class NeoGenerator {
    driver = null

    async createCypherFromDB (db, sample) {
        const tables = await db.getTables()
        const validTables = tables.filter(t => t.category !== TABLE_TYPE.unknown)
        const sortedTables = this.sortTablesByDependencies(validTables)
        const cypherDDL = await Promise.all(await sortedTables.map(async table => {
            const recordReader = await db.read(table, sample || 100, sample)
            const cypher = []
            for await(let records of recordReader) {
                cypher.push(this.generateCypher(table, records))
            }
            return cypher
        }))
        return cypherDDL.reduce((a, b) => a.concat(b), [])
            .join("\n")
    }

    sortTablesByDependencies (tables) {
        const sortedTables = []
        const tableDict = tables.reduce((acc, t) => {
            acc[t.name] = t
            return acc
        }, {})
        const _containTable = (arr1, arr2) => arr1.filter(a1 => arr2.indexOf(a1) !== -1).length === arr1.length
        while (tables.length !== sortedTables.length) {
            const pending = tables.filter(t => sortedTables.indexOf(t) === -1)
            pending.forEach(t => {
                const exRelations = t.relations
                                        .filter(r => r.tableName !== t.name) // Self relation
                                        .map(r => tableDict[r.tableName])
                const fullFilled = t.category === TABLE_TYPE.final ||
                    _containTable(exRelations, sortedTables)
                if (fullFilled) {
                    sortedTables.push(t)
                }
            })
            if (false) {
                console.log(`SOERTING: \n
                    ${pending.map(p => JSON.stringify({ name: p.name, relations: p.relations.map(r => [r.fromColumn, r.tableName, r.toColumn]) }))}\n
                    ${sortedTables.map(s => s.name)}
                `)
            }
        }
        return sortedTables
    }

    generateNodeCypher (table) {
        const { name } = table
        return (data, ix) => `CREATE (${'t'+ix}:${name} ${JSON.stringify(data, null, 2)})`
    }

    generateRelationsCypher (table) {
        const { name } = table
        const { relations } = table
        const from = relations[0]
        const to = relations[1] || from
        return (data, ix) => {
            const tl = `tl${ix}`
            const tr = `tr${ix}`
            const { tableName: tlName, fromColumn: tlFromColumn } = from
            const { tableName: trName, toColumn: trToColumn } = to
            return (
                `MATCH (${tl}:${tlName}),(${tr}}:${trName})
                WHERE ${tl}.${tlFromColumn} = "${data[tlFromColumn]}"
                    AND ${tr}.${trToColumn} = "${data[trToColumn]}"
                CREATE (${tl})-[${"r"+ix}:${name}]->(${tr})`
            )
        }
    }

    generateCypher (table, records) {
        if (table.category === TABLE_TYPE.final) {
            const builder = this.generateNodeCypher(table)
            return records.map(builder).join("\n")
        } else if (table.category === TABLE_TYPE.nm) {
            const builder = this.generateRelationsCypher(table)
            return records.map(builder).join("\n")
        } else if (table.category === TABLE_TYPE.composed) {
            const nodeBuilder = this.generateNodeCypher(table)
            const relationBuilder = this.generateRelationsCypher(table)
            return [...records.map(nodeBuilder),
                    ...records.map(relationBuilder)]
                    .join("\n")
        }
        throw Error('generateCypher no builder ', table.name, table.category)
    }

    connect () {
        this.driver = new neo4j()
        this.driver.connect(
            'neo4j://localhost',
            neo4j.auth.basic('neo4j', 'CyferdTest!')
        )
        return this.driver
    }

    disconnect () {
        this.driver.close()
    }

    execCypher (cypher, database) {
        return new Promise((res, rej) => {
            const records = []
            const session = this.connect().session({
                database,
                defaultAccessMode: neo4j.session.WRITE
            })
            session
                .run(cypher)
                .subscribe({
                    onKeys: keys => {
                        console.log(keys)
                    },
                    onNext: record => {
                        records.push(record)
                    },
                    onCompleted: () => {
                        session.close()
                        res(records) // returns a Promise
                    },
                    onError: error => {
                        session.close()
                        rej(error)
                    }
                })
        })
    }
}