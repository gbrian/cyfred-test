import { createReadStream } from 'fs'
import { createInterface } from 'readline'

import { TABLE_TYPE } from './constants'


const START_TABLE = "CREATE TABLE"
const END_TABLE = ");"

/**
 * RDBMS Schema processor
 */
export class RDBMSSchema {

    /**
     * Text file line by line reader
     * @param {String} file File name 
     */
    async * readLines (file) {
        const fileStream = createReadStream(file);
        const rl = createInterface({
            input: fileStream,
            crlfDelay: Infinity
        });

        for await (const line of rl) {
            yield line
        }
    }

    /**
     * Creates an SchemaDefinition object from a DDL file
     * @param {String} file File name 
     * @returns 
     */
    async extractTables (file) {
        let buffer = []
        let fillingBuffer = false
        const lines = this.readLines(file)
        const tables = []
        for await (let line of lines) {
            const res = await line
            if (res.indexOf(START_TABLE) !== -1) {
                fillingBuffer = true
            }
            if (fillingBuffer) {
                buffer.push(res)
                if (res.indexOf(END_TABLE) !== -1) {
                    fillingBuffer = false
                    const table = this.buildTableFromSql(buffer.join(""))
                    tables.push(table)
                    buffer = []
                }
            }
        }
        return this.mapSchemaRelations(tables)
    }

    async parseSchemaDDL (ddl) {
        let buffer = []
        let fillingBuffer = false
        const lines = ddl.split("\n")
        const tables = []
        for (let line of lines) {
            if (line.indexOf(START_TABLE) !== -1) {
                fillingBuffer = true
            }
            if (fillingBuffer) {
                buffer.push(line)
                if (line.indexOf(END_TABLE) !== -1) {
                    fillingBuffer = false
                    const table = this.buildTableFromSql(buffer.join(""))
                    tables.push(table)
                    buffer = []
                }
            }
        }
        return this.mapSchemaRelations(tables)
    }

    /**
     * Maps relations to table definition
     * @param {Array: Table} tables 
     * @returns 
     */
    mapSchemaRelations (tables) {
        tables.filter(t => t.category !== TABLE_TYPE.unknown)
            .forEach(table => {
            table.relations.forEach(rel => {
                const tableName = rel.tableName
                rel.table = tables.filter(t => t.name === tableName)[0]
            })
        })
        return tables
    }

    buildTableFromSql (tableDDL) {
        const table = this.parseTableDDL(tableDDL)
        const category = table.category || this.categoriseTable(table)
        return {
            ...table,
            category
        }
    }

    parseTableDDL (tableDDL) {
        const standardTable = /CREATE TABLE \[([^\]]+)/.exec(tableDDL)
        if (!standardTable) {
            return { tableDDL, category: TABLE_TYPE.unknown }
        }
        const startBodyIx = tableDDL.indexOf("(")
        const endBodyIx = tableDDL.lastIndexOf(");")
        const body = tableDDL.substring(startBodyIx + 1, endBodyIx)
                        .split(",")
                        .map(l => l.trim())
        const columns = body.map(l => /^\[([^\]]+)\] ?([^ ]+)(.*)/.exec(l))
                            .filter(m => m)
                            .map(m => ({
                                name: m[1],
                                type: m[2],
                                modifiers: m[3],
                                ddl: m[0]
                            }))

        const relations = body.map(l => /^FOREIGN KEY \(\[((?<fromColumn>[^\]]+))\]\) REFERENCES \[(?<tableName>[^\]]+)\] \(\[((?<toColumn>[^\]]+))\]\) .*/.exec(l))
                            .filter(m => m)
                            .map(m => ({
                                type: 'FOREIGN',
                                ...m.groups,
                                ddl: m[0]
                            }))
        const table = {
            name: standardTable[1],
            columns,
            body,
            relations,
            tableDDL
        }
        return table
    }

    categoriseTable (table) {
        let category = TABLE_TYPE.final
        if (table.relations.length !== 0) {
            const columns = table.columns.map(c => c.name)
                                    .sort().join("").toLowerCase()
            const relations = table.relations.map(r => r.fromColumn)
                                    .sort().join("").toLowerCase()
            if (columns === relations) {
                category = TABLE_TYPE.nm
            } else {
                category = TABLE_TYPE.composed
            }
        }
        return category
    }
}