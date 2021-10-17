import { RDBMSSchema } from '../sql/schema'
import { TABLE_TYPE } from '../sql/constants'
import neo4j from 'neo4j-driver'

export class NeoGenerator {
    driver = null

    createSchemaFromDB (schemaFileName) {
        const rdbsmSchema = new RDBMSSchema()
        const tables = rdbsmSchema.extractTables(schemaFileName)
        const sortedTables = this.sortTablesByDependencies(tables)
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
                const fullFilled = t.category === TABLE_TYPE.final ||
                _containTable(t.relations.map(r => tableDict[r.tableName]), sortedTables)
                if (fullFilled) {
                    sortedTables.push(t)
                }
            })
        }
        return sortedTables
    }

    generateCypher (table, records) {
        let cypher = null
        let builder = null
        const { name } = table
        if (table.category === TABLE_TYPE.final) {
            builder = (data, ix) => `CREATE (${'t'+ix}:${name} ${JSON.stringify(data, null, 2)})`
        } else if (table.category === TABLE_TYPE.nm) {
            const { relations } = table
            const from = relations[0]
            const to = relations[1]
            builder = (data, ix) => {
                const tl = `tl${ix}`
                const tr = `tr${ix}`
                const { tableName: tlName, fromColumn: tlFromColumn, toColumn: tlToColumn } = from
                const { tableName: trName, fromColumn: trFromColumn, toColumn: trToColumn } = to
                return (
                    `MATCH (${tl}:${tlName}),(${tr}}:${trName})
                    WHERE ${tl}.${tlFromColumn} = "${data[tlFromColumn]}"
                        AND ${tr}.${trToColumn} = "${data[trToColumn]}"
                    CREATE (${tl})-[${"r"+ix}:${name}]->(${tr})`
                )
            }
        }
        return records.map(builder).join("\n")
    }

    connect () {
        this.driver = neo4j.connect(
            'neo4j://localhost',
            neo4j.auth.basic('neo4j', 'CyferdTest!')
        )
    }

    disconnect () {
        this.driver.close()
    }

    execCypher (cypher, database) {
        return new Promise((res, rej) => {
            const records = []
            const session = driver.session({
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