import { expect, assert } from 'chai'
import { NeoGenerator } from '../src/graph/neogen'
import { PARSED_TABLES, NM_TABLE, FINAL_TABLE } from './neo.test.data'
import { PARSED_TABLES_SORTED } from './neo.test.expect'
import { SqliteDataExtractor } from '../src/rdbms/sqlite'
import { NORTHWIND_DATA_FILE, NORTHWIND_CYPHER_FILE } from './northwind.expect'

import { writeFile } from 'fs/promises'



describe('Test NeoGenerator generator', async function () {
    const neo = new NeoGenerator()

    it('Sorts tables based on their dependencies', () => {
        const sortedTables = neo.sortTablesByDependencies(PARSED_TABLES)
        assert.deepEqual(PARSED_TABLES_SORTED, sortedTables)
    })

    it('Generates correct cypher', () => {
        [NM_TABLE, FINAL_TABLE].forEach(t => {
            const { table, data } = t
            const cypher = neo.generateCypher(table, data)
            console.log('cypher code is ', cypher)
        })
    })

    it('Creates schema from DB', async () => {
        const sqlite = new SqliteDataExtractor(NORTHWIND_DATA_FILE)
        const cypher = await neo.createCypherFromDB(sqlite, 10)
        await writeFile(NORTHWIND_CYPHER_FILE, cypher)
    })
})