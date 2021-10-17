
export const PARSED_TABLES = [
    {
        name: 't1',
        relations: []
    },
    {
        name: 't2',
        relations: [ { tableName: 't1' }]
    },
    {
        name: 't3',
        relations: [ { tableName: 't5' }, { tableName: 't2' }]
    },
    {
        name: 't4',
        relations: [ { tableName: 't1' }]
    },
    {
        name: 't5',
        relations: [{ tableName: 't1' }, { tableName: 't2' }]
    }
]


export const NM_TABLE = {
    table: {
        "name": "CustomerCustomerDemo",
        "columns": {
            "CustomerID": "TEXT NOT NULL",
            "CustomerTypeID": "TEXT NOT NULL"
        },
        "PRIMARY KEY": [
            "CustomerID",
            "CustomerTypeID"
        ],
        "relations": [
        {
            "fromColumn": "CustomerID",
            "tableName": "Customers",
            "toColumn": "CustomerTypeID",
            "constrains": "ON DELETE NO ACTION ON UPDATE NO ACTION"
        },
        {
            "fromColumn": "CustomerTypeID",
            "tableName": "CustomerDemographics",
            "toColumn": "CustomerTypeID",
            "constrains": " ON DELETE NO ACTION ON UPDATE NO ACTION"
        }
        ],
        "category": "nm"
    },
    data: [
        { "CustomerID": "CustomerID1", "CustomerTypeID": "CustomerTypeID1" },
        { "CustomerID": "CustomerID2", "CustomerTypeID": "CustomerTypeID2" }
    ]
}

export const FINAL_TABLE = {
    table: {
        "name": "Customers",
        "columns": {
            "CustomerID": "TEXT",
            "CompanyName": "TEXT",
        },
        "PRIMARY KEY": [
            "CustomerID"
        ],
        "category": "final"
        },
    data: [
        { "CustomerID": "CustomerID1", "CompanyName": "CompanyName1" },
        { "CustomerID": "CustomerID2", "CompanyName": "CompanyName2" }
    ]
}