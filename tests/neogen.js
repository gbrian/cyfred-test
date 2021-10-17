import { expect, assert } from 'chai'
import { NeoGenerator } from '../src/graph/neogen'
import { PARSED_TABLES, NM_TABLE, FINAL_TABLE } from './neo.test.data'
import { PARSED_TABLES_SORTED } from './neo.test.expect'



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
})