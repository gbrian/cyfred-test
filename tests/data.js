import { expect, assert } from 'chai'
import { NORTHWIND_DATA_FILE, NORTHWIND } from './northwind.expect'
import { SqliteDataExtractor } from '../dist/rdbms/sqlite'

describe('Test Northwind data extractor', async function () {
    const expectedTables = Object.keys(NORTHWIND)
    const extractor = new SqliteDataExtractor(NORTHWIND_DATA_FILE)

    it('Total records match', async () => {
        expectedTables.forEach(async table => {
            try {
                const expectedCount = NORTHWIND[table].totalRecords
                const totalRecords = await extractor.getTableTotalRecords({ name: table })
                NORTHWIND[table].totalRecords = totalRecords
                assert.equal(expectedCount, totalRecords, `Total records mistmatch for table ${table}`)
            } catch (err) {
                console.error(err)
            }
        })
    })
    it('Extract records from tables and validate columns name', async () => {
        expectedTables.forEach(async name => {
            try {
                const table = NORTHWIND[name]
                const { columns } = table
                const reader = await extractor.read({ name }, 1)
                const records = (await reader.next()).value
                assert.deepEqual(columns, Object.keys(records[0]), `Columns error for table ${name}`)
            } catch(err) {
                console.err(err)
            }
        })
    })
})