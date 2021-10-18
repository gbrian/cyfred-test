import sqlite3 from 'sqlite3'
import { RDBMSSchema } from '../sql/schema'

/**
 * sqlite data extractor
 */
export class SqliteDataExtractor {
    db = null

    constructor (fileName) {
        this.fileName = fileName
        this.open()
    }

    open () {
        this.db = new sqlite3.Database(this.fileName)
    }

    async query (sql) {
        return new Promise((res, rej) =>
            this.db.all(sql, (err, rows) => err ? rej(err) : res(rows)))
    }

    async getSchema () {
        const res = await this.query("SELECT sql FROM sqlite_schema")
        return res.map(r => r.sql).join(";\n")
    }

    async getTables () {
        const rdbmsSchema = new RDBMSSchema()
        return rdbmsSchema.parseSchemaDDL(await this.getSchema())
    }

    async getTableTotalRecords (table) {
        const res = await this.query(`select count(*) as totalRecords from "${table.name}"`)
        return res[0].totalRecords
    }

    async * read (table, chunkSize, totalRecords) {
        if (!totalRecords) {
            totalRecords = await this.getTableTotalRecords(table)
        }
        let offset = 0
        chunkSize = chunkSize || totalRecords
        while(totalRecords > 0) {
            const sql = `select * from "${table.name}" limit ${chunkSize} offset ${offset}`
            const records = await this.query(sql)
            yield records
            offset += chunkSize
            totalRecords -= chunkSize
        }
    }
}