
export const PARSED_TABLES_SORTED = [
    {
        name: 't1',
        relations: []
    },
    {
        name: 't2',
        relations: [ { tableName: 't1' }]
    },
    {
        name: 't4',
        relations: [ { tableName: 't1' }]
    },
    {
        name: 't5',
        relations: [{ tableName: 't1' }, { tableName: 't2' }]
    },
    {
        name: 't3',
        relations: [ { tableName: 't5' }, { tableName: 't2' }]
    }
]

export const NM_TABLE_CYPHER =
    `MATCH (tl0:Customers),(tr0}:CustomerDemographics)
        WHERE tl0.CustomerID = "CustomerID1"
        AND tr0.CustomerTypeID = "CustomerTypeID1"
    CREATE (tl0)-[r0:CustomerCustomerDemo]->(tr0)
    MATCH (tl1:Customers),(tr1}:CustomerDemographics)
    WHERE tl1.CustomerID = "CustomerID2"
        AND tr1.CustomerTypeID = "CustomerTypeID2"
    CREATE (tl1)-[r1:CustomerCustomerDemo]->(tr1)`

export const FINAL_TABLE_CYPHER = 
    `CREATE (t0:Customers {
        "CustomerID": "CustomerID1",
        "CompanyName": "CompanyName1"
    })
    CREATE (t1:Customers {
        "CustomerID": "CustomerID2",
        "CompanyName": "CompanyName2"
    })`