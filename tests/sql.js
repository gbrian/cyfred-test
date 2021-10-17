import { expect, assert } from 'chai'
import { RDBMSSchema } from '../src/sql/schema'
import { NORTHWIND_SCHEMA_FILE, NORTHWIND } from './northwind.expect'

describe('Test Northwind schema sql file parser', async function () {
    const schema = new RDBMSSchema()
    let tables = null
    const expectedTables = Object.keys(NORTHWIND)

    it('Extract tables from schema', async () => {
        tables = await schema.extractTables(NORTHWIND_SCHEMA_FILE)
        expect(tables, 'No tables found on file').not.be.empty
    })

    it('Validate we parse the same amount of tables', () => {
        assert.equal(tables.length, expectedTables.length)
    })

    it('Validate all northwind tables exists', async () => {
        tables.forEach(table =>
            expect(table.category === 'unknown' || NORTHWIND[table.name], `Table ${table.name} was not expected`).exist
        )
    })

    it('Table definition have right structure', () => {
        tables.filter(t => t.category !== 'unknown')
            .forEach(table => {
                assert.exists(table.columns, `${table.name} has no columns`)
            })
        })

    it('Tables are correct', () => {
        tables.filter(t => t.category !== 'unknown')
            .forEach(table => {
                const expectedTable = NORTHWIND[table.name]
                
                const parsedColumns = table.columns.map(c => c.name)
                const expectedColumns = Object.keys(expectedTable.columns)
                assert.deepEqual(parsedColumns, expectedColumns, `Error parsing table ${table.name} ${parsedColumns} vs ${expectedColumns}`)
            })
    })
})
