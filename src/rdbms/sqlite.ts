import sqlite3 from 'sqlite3'
import { RDBMSSchema } from '../sql/schema'
import { Table } from '../sql/interfaces'

/**
 * sqlite data extractor
 */
export class SqliteDataExtractor {
    fileName: string
    db: any

    constructor (fileName: string) {
        this.fileName = fileName
        this.open()
    }

    open () {
        this.db = new sqlite3.Database(this.fileName)
    }

    async query (sql: string) : Promise<any> {
        return new Promise((res, rej) =>
            this.db.all(sql, (err: string, rows: any[]) => err ? rej(err) : res(rows)))
    }

    async getSchema () {
        const res = await this.query("SELECT sql FROM sqlite_schema")
        return res.map((r: { sql: any }) => r.sql).join(";\n")
    }

    async getTables (): Promise<any> {
        const rdbmsSchema = new RDBMSSchema()
        return rdbmsSchema.parseSchemaDDL(await this.getSchema())
    }

    async getTableTotalRecords (table: Table) {
        const res = await this.query(`select count(*) as totalRecords from "${table.name}"`)
        return res[0].totalRecords
    }

    async * read (table: Table, chunkSize: number, totalRecords: number) {
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