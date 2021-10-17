export const NORTHWIND_DATA_FILE = __dirname + '/../db/Northwind_test.sqlite'
export const NORTHWIND_SCHEMA_FILE = __dirname + '/../db/Northwind_schema.sql'
export const NORTHWIND = {
    "Categories": {
      "columns": {
        "CategoryID": "INTEGER PRIMARY KEY AUTOINCREMENT",
        "CategoryName": "TEXT",
        "Description": "TEXT",
        "Picture": "BLOB"
      },
      "category": "final",
      "totalRecords": 8
    },
    "sqlite_sequence": {
      "columns": {
        "name": {},
        "seq": {}
      },
      "category": "unknown",
      "totalRecords": 6
    },
    "CustomerCustomerDemo": {
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
      "category": "nm",
      "totalRecords": 0
    },
    "CustomerDemographics": {
      "columns": {
        "CustomerTypeID": "TEXT NOT NULL",
        "CustomerDesc": "TEXT"
      },
      "PRIMARY KEY": [
        "CustomerTypeID"
      ],
      "category": "final",
      "totalRecords": 0
    },
    "Customers": {
      "columns": {
        "CustomerID": "TEXT",
        "CompanyName": "TEXT",
        "ContactName": "TEXT",
        "ContactTitle": "TEXT",
        "Address": "TEXT",
        "City": "TEXT",
        "Region": "TEXT",
        "PostalCode": "TEXT",
        "Country": "TEXT",
        "Phone": "TEXT",
        "Fax": "TEXT"
      },
      "PRIMARY KEY": [
        "CustomerID"
      ],
      "category": "final",
      "totalRecords": 93
    },
    "Employees": {
      "columns": {
        "EmployeeID": "INTEGER PRIMARY KEY AUTOINCREMENT",
        "LastName": "TEXT",
        "FirstName": "TEXT",
        "Title": "TEXT",
        "TitleOfCourtesy": "TEXT",
        "BirthDate": "DATE",
        "HireDate": "DATE",
        "Address": "TEXT",
        "City": "TEXT",
        "Region": "TEXT",
        "PostalCode": "TEXT",
        "Country": "TEXT",
        "HomePhone": "TEXT",
        "Extension": "TEXT",
        "Photo": "BLOB",
        "Notes": "TEXT",
        "ReportsTo": "INTEGER",
        "PhotoPath": "TEXT"
      },
      "relations": [
        {
          "fromColumn": "ReportsTo",
          "tableName": "Employees",
          "toColumn": "EmployeeID",
          "constrains": " ON DELETE NO ACTION ON UPDATE NO ACTION"
        }
      ],
      "category": "composed",
      "totalRecords": 9
    },
    "EmployeeTerritories": {
      "columns": {
        "EmployeeID": "INTEGER NOT NULL",
        "TerritoryID": "TEXT NOT NULL"
      },
      "PRIMARY KEY": [
        "EmployeeID",
        "TerritoryID"
      ],
      "relations": [
        {
          "fromColumn": "EmployeeID",
          "tableName": "Employees",
          "toColumn": "EmployeeID",
          "constrains": " ON DELETE NO ACTION ON UPDATE NO ACTION,"
        },
        {
          "fromColumn": "TerritoryID",
          "tableName": "Territories",
          "toColumn": "TerritoryID",
          "constrains": " ON DELETE NO ACTION ON UPDATE NO ACTION"
        }
      ],
      "category": "nm",
      "totalRecords": 49
    },
    "Order Details": {
      "columns": {
        "OrderID": "INTEGER NOT NULL",
        "ProductID": "INTEGER NOT NULL",
        "UnitPrice": "NUMERIC NOT NULL DEFAULT 0",
        "Quantity": "INTEGER NOT NULL DEFAULT 1",
        "Discount": "REAL NOT NULL DEFAULT 0"
      },
      "PRIMARY KEY": [
        "OrderID",
        "ProductID"
      ],
      "relations": [
        {
          "fromColumn": "OrderID",
          "tableName": "Orders",
          "toColumn": "OrderID",
          "constrains": " ON DELETE NO ACTION ON UPDATE NO ACTION,"
        },
        {
          "fromColumn": "ProductID",
          "tableName": "Products",
          "toColumn": "ProductID",
          "constrains": " ON DELETE NO ACTION ON UPDATE NO ACTION"
        }
      ],
      "category": "composed",
      "totalRecords": 2155
    },
    "Orders": {
      "columns": {
        "OrderID": "INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT",
        "CustomerID": "TEXT",
        "EmployeeID": "INTEGER",
        "OrderDate": "DATETIME",
        "RequiredDate": "DATETIME",
        "ShippedDate": "DATETIME",
        "ShipVia": "INTEGER",
        "Freight": "NUMERIC DEFAULT 0",
        "ShipName": "TEXT",
        "ShipAddress": "TEXT",
        "ShipCity": "TEXT",
        "ShipRegion": "TEXT",
        "ShipPostalCode": "TEXT",
        "ShipCountry": "TEXT"
      },
      "relations": [
        {
          "fromColumn": "EmployeeID",
          "tableName": "Employees",
          "toColumn": "EmployeeID",
          "constrains": " ON DELETE NO ACTION ON UPDATE NO ACTION,"
        },
        {
          "fromColumn": "CustomerID",
          "tableName": "Customers",
          "toColumn": "CustomerID",
          "constrains": " ON DELETE NO ACTION ON UPDATE NO ACTION,"
        },
        {
          "fromColumn": "ShipVia",
          "tableName": "Shippers",
          "toColumn": "ShipperID",
          "constrains": " ON DELETE NO ACTION ON UPDATE NO ACTION"
        }
      ],
      "category": "composed",
      "totalRecords": 830
    },
    "Products": {
      "columns": {
        "ProductID": "INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT",
        "ProductName": "TEXT NOT NULL",
        "SupplierID": "INTEGER",
        "CategoryID": "INTEGER",
        "QuantityPerUnit": "TEXT",
        "UnitPrice": "NUMERIC DEFAULT 0",
        "UnitsInStock": "INTEGER DEFAULT 0",
        "UnitsOnOrder": "INTEGER DEFAULT 0",
        "ReorderLevel": "INTEGER DEFAULT 0",
        "Discontinued": "TEXT NOT NULL DEFAULT '0'"
      },
      "relations": [
        {
          "fromColumn": "ProductID",
          "tableName": "Categories",
          "toColumn": "CategoryID",
          "constrains": " ON DELETE NO ACTION ON UPDATE NO ACTION,"
        },
        {
          "fromColumn": "SupplierID",
          "tableName": "Suppliers",
          "toColumn": "SupplierID",
          "constrains": " ON DELETE NO ACTION ON UPDATE NO ACTION"
        }
      ],
      "category": "composed",
      "totalRecords": 77
    },
    "Regions": {
      "columns": {
        "RegionID": "INTEGER NOT NULL PRIMARY KEY",
        "RegionDescription": "TEXT NOT NULL"
      },
      "category": "final",
      "totalRecords": 4
    },
    "Shippers": {
      "columns": {
        "ShipperID": "INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT",
        "CompanyName": "TEXT NOT NULL",
        "Phone": "TEXT"
      },
      "category": "final",
      "totalRecords": 3
    },
    "Suppliers": {
      "columns": {
        "SupplierID": "INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT",
        "CompanyName": "TEXT NOT NULL",
        "ContactName": "TEXT",
        "ContactTitle": "TEXT",
        "Address": "TEXT",
        "City": "TEXT",
        "Region": "TEXT",
        "PostalCode": "TEXT",
        "Country": "TEXT",
        "Phone": "TEXT",
        "Fax": "TEXT",
        "HomePage": "TEXT"
      },
      "category": "final",
      "totalRecords": 29
    },
    "Territories": {
      "columns": {
        "TerritoryID": "TEXT NOT NULL",
        "TerritoryDescription": "TEXT NOT NULL",
        "RegionID": "INTEGER NOT NULL"
      },
      "PRIMARY KEY": [
        "TerritoryID"
      ],
      "relations": [
        {
          "fromColumn": "RegionID",
          "tableName": "Regions",
          "toColumn": "RegionID",
          "constrains": " ON DELETE NO ACTION ON UPDATE NO ACTION"
        }
      ],
      "category": "composed",
      "totalRecords": 53
    }
  }