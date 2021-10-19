CREATE (t0:`Categories` { `CategoryID`: 1,
`CategoryName`: "Beverages",
`Description`: "Soft drinks, coffees, teas, beers, and ales",
`Picture`: null });
CREATE (t1:`Categories` { `CategoryID`: 2,
`CategoryName`: "Condiments",
`Description`: "Sweet and savory sauces, relishes, spreads, and seasonings",
`Picture`: null });
CREATE (t2:`Categories` { `CategoryID`: 3,
`CategoryName`: "Confections",
`Description`: "Desserts, candies, and sweet breads",
`Picture`: null });
CREATE (t3:`Categories` { `CategoryID`: 4,
`CategoryName`: "Dairy Products",
`Description`: "Cheeses",
`Picture`: null });
CREATE (t4:`Categories` { `CategoryID`: 5,
`CategoryName`: "Grains/Cereals",
`Description`: "Breads, crackers, pasta, and cereal",
`Picture`: null });
CREATE (t5:`Categories` { `CategoryID`: 6,
`CategoryName`: "Meat/Poultry",
`Description`: "Prepared meats",
`Picture`: null });
CREATE (t6:`Categories` { `CategoryID`: 7,
`CategoryName`: "Produce",
`Description`: "Dried fruit and bean curd",
`Picture`: null });
CREATE (t7:`Categories` { `CategoryID`: 8,
`CategoryName`: "Seafood",
`Description`: "Seaweed and fish",
`Picture`: null });

CREATE (t0:`Customers` { `CustomerID`: "ALFKI",
`CompanyName`: "Alfreds Futterkiste",
`ContactName`: "Maria Anders",
`ContactTitle`: "Sales Representative",
`Address`: "Obere Str. 57",
`City`: "Berlin",
`Region`: null,
`PostalCode`: "12209",
`Country`: "Germany",
`Phone`: "030-0074321",
`Fax`: "030-0076545" });
CREATE (t1:`Customers` { `CustomerID`: "ANATR",
`CompanyName`: "Ana Trujillo Emparedados y helados",
`ContactName`: "Ana Trujillo",
`ContactTitle`: "Owner",
`Address`: "Avda. de la Constitución 2222",
`City`: "México D.F.",
`Region`: null,
`PostalCode`: "05021",
`Country`: "Mexico",
`Phone`: "(5) 555-4729",
`Fax`: "(5) 555-3745" });
CREATE (t2:`Customers` { `CustomerID`: "ANTON",
`CompanyName`: "Antonio Moreno Taquería",
`ContactName`: "Antonio Moreno",
`ContactTitle`: "Owner",
`Address`: "Mataderos  2312",
`City`: "México D.F.",
`Region`: null,
`PostalCode`: "05023",
`Country`: "Mexico",
`Phone`: "(5) 555-3932",
`Fax`: null });
CREATE (t3:`Customers` { `CustomerID`: "AROUT",
`CompanyName`: "Around the Horn",
`ContactName`: "Thomas Hardy",
`ContactTitle`: "Sales Representative",
`Address`: "120 Hanover Sq.",
`City`: "London",
`Region`: null,
`PostalCode`: "WA1 1DP",
`Country`: "UK",
`Phone`: "(171) 555-7788",
`Fax`: "(171) 555-6750" });
CREATE (t4:`Customers` { `CustomerID`: "BERGS",
`CompanyName`: "Berglunds snabbköp",
`ContactName`: "Christina Berglund",
`ContactTitle`: "Order Administrator",
`Address`: "Berguvsvägen  8",
`City`: "Luleå",
`Region`: null,
`PostalCode`: "S-958 22",
`Country`: "Sweden",
`Phone`: "0921-12 34 65",
`Fax`: "0921-12 34 67" });
CREATE (t5:`Customers` { `CustomerID`: "BLAUS",
`CompanyName`: "Blauer See Delikatessen",
`ContactName`: "Hanna Moos",
`ContactTitle`: "Sales Representative",
`Address`: "Forsterstr. 57",
`City`: "Mannheim",
`Region`: null,
`PostalCode`: "68306",
`Country`: "Germany",
`Phone`: "0621-08460",
`Fax`: "0621-08924" });
CREATE (t6:`Customers` { `CustomerID`: "BLONP",
`CompanyName`: "Blondesddsl père et fils",
`ContactName`: "Frédérique Citeaux",
`ContactTitle`: "Marketing Manager",
`Address`: "24, place Kléber",
`City`: "Strasbourg",
`Region`: null,
`PostalCode`: "67000",
`Country`: "France",
`Phone`: "88.60.15.31",
`Fax`: "88.60.15.32" });
CREATE (t7:`Customers` { `CustomerID`: "BOLID",
`CompanyName`: "Bólido Comidas preparadas",
`ContactName`: "Martín Sommer",
`ContactTitle`: "Owner",
`Address`: "C/ Araquil, 67",
`City`: "Madrid",
`Region`: null,
`PostalCode`: "28023",
`Country`: "Spain",
`Phone`: "(91) 555 22 82",
`Fax`: "(91) 555 91 99" });
CREATE (t8:`Customers` { `CustomerID`: "BONAP",
`CompanyName`: "Bon app'",
`ContactName`: "Laurence Lebihan",
`ContactTitle`: "Owner",
`Address`: "12, rue des Bouchers",
`City`: "Marseille",
`Region`: null,
`PostalCode`: "13008",
`Country`: "France",
`Phone`: "91.24.45.40",
`Fax`: "91.24.45.41" });
CREATE (t9:`Customers` { `CustomerID`: "BOTTM",
`CompanyName`: "Bottom-Dollar Markets",
`ContactName`: "Elizabeth Lincoln",
`ContactTitle`: "Accounting Manager",
`Address`: "23 Tsawassen Blvd.",
`City`: "Tsawassen",
`Region`: "BC",
`PostalCode`: "T2F 8M4",
`Country`: "Canada",
`Phone`: "(604) 555-4729",
`Fax`: "(604) 555-3745" });
CREATE (t0:`Employees` { `EmployeeID`: 1,
`LastName`: "Davolio",
`FirstName`: "Nancy",
`Title`: "Sales Representative",
`TitleOfCourtesy`: "Ms.",
`BirthDate`: "1948-12-08",
`HireDate`: "1992-05-01",
`Address`: "507 - 20th Ave. E.Apt. 2A",
`City`: "Seattle",
`Region`: "WA",
`PostalCode`: "98122",
`Country`: "USA",
`HomePhone`: "(206) 555-9857",
`Extension`: "5467",
`Photo`: null,
`Notes`: "Education includes a BA in psychology from Colorado State University in 1970.  She also completed \"The Art of the Cold Call.\"  Nancy is a member of Toastmasters International.",
`ReportsTo`: 2,
`PhotoPath`: "http://accweb/emmployees/davolio.bmp" });
CREATE (t1:`Employees` { `EmployeeID`: 2,
`LastName`: "Fuller",
`FirstName`: "Andrew",
`Title`: "Vice President, Sales",
`TitleOfCourtesy`: "Dr.",
`BirthDate`: "1952-02-19",
`HireDate`: "1992-08-14",
`Address`: "908 W. Capital Way",
`City`: "Tacoma",
`Region`: "WA",
`PostalCode`: "98401",
`Country`: "USA",
`HomePhone`: "(206) 555-9482",
`Extension`: "3457",
`Photo`: null,
`Notes`: "Andrew received his BTS commercial in 1974 and a Ph.D. in international marketing from the University of Dallas in 1981.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager in January 1992 and to vice president of sales in March 1993.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.",
`ReportsTo`: null,
`PhotoPath`: "http://accweb/emmployees/fuller.bmp" });
CREATE (t2:`Employees` { `EmployeeID`: 3,
`LastName`: "Leverling",
`FirstName`: "Janet",
`Title`: "Sales Representative",
`TitleOfCourtesy`: "Ms.",
`BirthDate`: "1963-08-30",
`HireDate`: "1992-04-01",
`Address`: "722 Moss Bay Blvd.",
`City`: "Kirkland",
`Region`: "WA",
`PostalCode`: "98033",
`Country`: "USA",
`HomePhone`: "(206) 555-3412",
`Extension`: "3355",
`Photo`: null,
`Notes`: "Janet has a BS degree in chemistry from Boston College (1984).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate in 1991 and promoted to sales representative in February 1992.",
`ReportsTo`: 2,
`PhotoPath`: "http://accweb/emmployees/leverling.bmp" });
CREATE (t3:`Employees` { `EmployeeID`: 4,
`LastName`: "Peacock",
`FirstName`: "Margaret",
`Title`: "Sales Representative",
`TitleOfCourtesy`: "Mrs.",
`BirthDate`: "1937-09-19",
`HireDate`: "1993-05-03",
`Address`: "4110 Old Redmond Rd.",
`City`: "Redmond",
`Region`: "WA",
`PostalCode`: "98052",
`Country`: "USA",
`HomePhone`: "(206) 555-8122",
`Extension`: "5176",
`Photo`: null,
`Notes`: "Margaret holds a BA in English literature from Concordia College (1958) and an MA from the American Institute of Culinary Arts (1966).  She was assigned to the London office temporarily from July through November 1992.",
`ReportsTo`: 2,
`PhotoPath`: "http://accweb/emmployees/peacock.bmp" });
CREATE (t4:`Employees` { `EmployeeID`: 5,
`LastName`: "Buchanan",
`FirstName`: "Steven",
`Title`: "Sales Manager",
`TitleOfCourtesy`: "Mr.",
`BirthDate`: "1955-03-04",
`HireDate`: "1993-10-17",
`Address`: "14 Garrett Hill",
`City`: "London",
`Region`: null,
`PostalCode`: "SW1 8JR",
`Country`: "UK",
`HomePhone`: "(71) 555-4848",
`Extension`: "3453",
`Photo`: null,
`Notes`: "Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree in 1976.  Upon joining the company as a sales representative in 1992, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London.  He was promoted to sales manager in March 1993.  Mr. Buchanan has completed the courses \"Successful Telemarketing\" and \"International Sales Management.\"  He is fluent in French.",
`ReportsTo`: 2,
`PhotoPath`: "http://accweb/emmployees/buchanan.bmp" });
CREATE (t5:`Employees` { `EmployeeID`: 6,
`LastName`: "Suyama",
`FirstName`: "Michael",
`Title`: "Sales Representative",
`TitleOfCourtesy`: "Mr.",
`BirthDate`: "1963-07-02",
`HireDate`: "1993-10-17",
`Address`: "Coventry House\nMiner Rd.",
`City`: "London",
`Region`: null,
`PostalCode`: "EC2 7JR",
`Country`: "UK",
`HomePhone`: "(71) 555-7773",
`Extension`: "428",
`Photo`: null,
`Notes`: "Michael is a graduate of Sussex University (MA, economics, 1983) and the University of California at Los Angeles (MBA, marketing, 1986).  He has also taken the courses \"Multi-Cultural Selling\" and \"Time Management for the Sales Professional.\"  He is fluent in Japanese and can read and write French, Portuguese, and Spanish.",
`ReportsTo`: 5,
`PhotoPath`: "http://accweb/emmployees/davolio.bmp" });
CREATE (t6:`Employees` { `EmployeeID`: 7,
`LastName`: "King",
`FirstName`: "Robert",
`Title`: "Sales Representative",
`TitleOfCourtesy`: "Mr.",
`BirthDate`: "1960-05-29",
`HireDate`: "1994-01-02",
`Address`: "Edgeham Hollow\nWinchester Way",
`City`: "London",
`Region`: null,
`PostalCode`: "RG1 9SP",
`Country`: "UK",
`HomePhone`: "(71) 555-5598",
`Extension`: "465",
`Photo`: null,
`Notes`: "Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan in 1992, the year he joined the company.  After completing a course entitled \"Selling in Europe,\" he was transferred to the London office in March 1993.",
`ReportsTo`: 5,
`PhotoPath`: "http://accweb/emmployees/davolio.bmp" });
CREATE (t7:`Employees` { `EmployeeID`: 8,
`LastName`: "Callahan",
`FirstName`: "Laura",
`Title`: "Inside Sales Coordinator",
`TitleOfCourtesy`: "Ms.",
`BirthDate`: "1958-01-09",
`HireDate`: "1994-03-05",
`Address`: "4726 - 11th Ave. N.E.",
`City`: "Seattle",
`Region`: "WA",
`PostalCode`: "98105",
`Country`: "USA",
`HomePhone`: "(206) 555-1189",
`Extension`: "2344",
`Photo`: null,
`Notes`: "Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French.",
`ReportsTo`: 2,
`PhotoPath`: "http://accweb/emmployees/davolio.bmp" });
CREATE (t8:`Employees` { `EmployeeID`: 9,
`LastName`: "Dodsworth",
`FirstName`: "Anne",
`Title`: "Sales Representative",
`TitleOfCourtesy`: "Ms.",
`BirthDate`: "1966-01-27",
`HireDate`: "1994-11-15",
`Address`: "7 Houndstooth Rd.",
`City`: "London",
`Region`: null,
`PostalCode`: "WG2 7LT",
`Country`: "UK",
`HomePhone`: "(71) 555-4444",
`Extension`: "452",
`Photo`: null,
`Notes`: "Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German.",
`ReportsTo`: 5,
`PhotoPath`: "http://accweb/emmployees/davolio.bmp" });
MATCH (tl0:`Employees`),(tr0:`Employees`)
                WHERE tl0.ReportsTo = 2
                    AND tr0.EmployeeID = 1
                CREATE (tl0)-[r0:`Employees`]->(tr0);
MATCH (tl1:`Employees`),(tr1:`Employees`)
                WHERE tl1.ReportsTo = null
                    AND tr1.EmployeeID = 2
                CREATE (tl1)-[r1:`Employees`]->(tr1);
MATCH (tl2:`Employees`),(tr2:`Employees`)
                WHERE tl2.ReportsTo = 2
                    AND tr2.EmployeeID = 3
                CREATE (tl2)-[r2:`Employees`]->(tr2);
MATCH (tl3:`Employees`),(tr3:`Employees`)
                WHERE tl3.ReportsTo = 2
                    AND tr3.EmployeeID = 4
                CREATE (tl3)-[r3:`Employees`]->(tr3);
MATCH (tl4:`Employees`),(tr4:`Employees`)
                WHERE tl4.ReportsTo = 2
                    AND tr4.EmployeeID = 5
                CREATE (tl4)-[r4:`Employees`]->(tr4);
MATCH (tl5:`Employees`),(tr5:`Employees`)
                WHERE tl5.ReportsTo = 5
                    AND tr5.EmployeeID = 6
                CREATE (tl5)-[r5:`Employees`]->(tr5);
MATCH (tl6:`Employees`),(tr6:`Employees`)
                WHERE tl6.ReportsTo = 5
                    AND tr6.EmployeeID = 7
                CREATE (tl6)-[r6:`Employees`]->(tr6);
MATCH (tl7:`Employees`),(tr7:`Employees`)
                WHERE tl7.ReportsTo = 2
                    AND tr7.EmployeeID = 8
                CREATE (tl7)-[r7:`Employees`]->(tr7);
MATCH (tl8:`Employees`),(tr8:`Employees`)
                WHERE tl8.ReportsTo = 5
                    AND tr8.EmployeeID = 9
                CREATE (tl8)-[r8:`Employees`]->(tr8);
CREATE (t0:`Regions` { `RegionID`: 1,
`RegionDescription`: "Eastern                                           " });
CREATE (t1:`Regions` { `RegionID`: 2,
`RegionDescription`: "Westerns                                           " });
CREATE (t2:`Regions` { `RegionID`: 3,
`RegionDescription`: "Northern                                          " });
CREATE (t3:`Regions` { `RegionID`: 4,
`RegionDescription`: "Southern                                          " });
CREATE (t0:`Shippers` { `ShipperID`: 1,
`CompanyName`: "Speedy Express",
`Phone`: "(503) 555-9831" });
CREATE (t1:`Shippers` { `ShipperID`: 2,
`CompanyName`: "United Package",
`Phone`: "(503) 555-3199" });
CREATE (t2:`Shippers` { `ShipperID`: 3,
`CompanyName`: "Federal Shipping",
`Phone`: "(503) 555-9931" });
CREATE (t0:`Suppliers` { `SupplierID`: 1,
`CompanyName`: "Exotic Liquids",
`ContactName`: "Charlotte Cooper",
`ContactTitle`: "Purchasing Manager",
`Address`: "49 Gilbert St.",
`City`: "London",
`Region`: null,
`PostalCode`: "EC1 4SD",
`Country`: "UK",
`Phone`: "(171) 555-2222",
`Fax`: null,
`HomePage`: null });
CREATE (t1:`Suppliers` { `SupplierID`: 2,
`CompanyName`: "New Orleans Cajun Delights",
`ContactName`: "Shelley Burke",
`ContactTitle`: "Order Administrator",
`Address`: "P.O. Box 78934",
`City`: "New Orleans",
`Region`: "LA",
`PostalCode`: "70117",
`Country`: "USA",
`Phone`: "(100) 555-4822",
`Fax`: null,
`HomePage`: "#CAJUN.HTM#" });
CREATE (t2:`Suppliers` { `SupplierID`: 3,
`CompanyName`: "Grandma Kelly's Homestead",
`ContactName`: "Regina Murphy",
`ContactTitle`: "Sales Representative",
`Address`: "707 Oxford Rd.",
`City`: "Ann Arbor",
`Region`: "MI",
`PostalCode`: "48104",
`Country`: "USA",
`Phone`: "(313) 555-5735",
`Fax`: "(313) 555-3349",
`HomePage`: null });
CREATE (t3:`Suppliers` { `SupplierID`: 4,
`CompanyName`: "Tokyo Traders",
`ContactName`: "Yoshi Nagase",
`ContactTitle`: "Marketing Manager",
`Address`: "9-8 Sekimai\nMusashino-shi",
`City`: "Tokyo",
`Region`: null,
`PostalCode`: "100",
`Country`: "Japan",
`Phone`: "(03) 3555-5011",
`Fax`: null,
`HomePage`: null });
CREATE (t4:`Suppliers` { `SupplierID`: 5,
`CompanyName`: "Cooperativa de Quesos 'Las Cabras'",
`ContactName`: "Antonio del Valle Saavedra ",
`ContactTitle`: "Export Administrator",
`Address`: "Calle del Rosal 4",
`City`: "Oviedo",
`Region`: "Asturias",
`PostalCode`: "33007",
`Country`: "Spain",
`Phone`: "(98) 598 76 54",
`Fax`: null,
`HomePage`: null });
CREATE (t5:`Suppliers` { `SupplierID`: 6,
`CompanyName`: "Mayumi's",
`ContactName`: "Mayumi Ohno",
`ContactTitle`: "Marketing Representative",
`Address`: "92 Setsuko\nChuo-ku",
`City`: "Osaka",
`Region`: null,
`PostalCode`: "545",
`Country`: "Japan",
`Phone`: "(06) 431-7877",
`Fax`: null,
`HomePage`: "Mayumi's (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#" });
CREATE (t6:`Suppliers` { `SupplierID`: 7,
`CompanyName`: "Pavlova, Ltd.",
`ContactName`: "Ian Devling",
`ContactTitle`: "Marketing Manager",
`Address`: "74 Rose St.\nMoonie Ponds",
`City`: "Melbourne",
`Region`: "Victoria",
`PostalCode`: "3058",
`Country`: "Australia",
`Phone`: "(03) 444-2343",
`Fax`: "(03) 444-6588",
`HomePage`: null });
CREATE (t7:`Suppliers` { `SupplierID`: 8,
`CompanyName`: "Specialty Biscuits, Ltd.",
`ContactName`: "Peter Wilson",
`ContactTitle`: "Sales Representative",
`Address`: "29 King's Way",
`City`: "Manchester",
`Region`: null,
`PostalCode`: "M14 GSD",
`Country`: "UK",
`Phone`: "(161) 555-4448",
`Fax`: null,
`HomePage`: null });
CREATE (t8:`Suppliers` { `SupplierID`: 9,
`CompanyName`: "PB Knäckebröd AB",
`ContactName`: "Lars Peterson",
`ContactTitle`: "Sales Agent",
`Address`: "Kaloadagatan 13",
`City`: "Göteborg",
`Region`: null,
`PostalCode`: "S-345 67",
`Country`: "Sweden ",
`Phone`: "031-987 65 43",
`Fax`: "031-987 65 91",
`HomePage`: null });
CREATE (t9:`Suppliers` { `SupplierID`: 10,
`CompanyName`: "Refrescos Americanas LTDA",
`ContactName`: "Carlos Diaz",
`ContactTitle`: "Marketing Manager",
`Address`: "Av. das Americanas 12.890",
`City`: "São Paulo",
`Region`: null,
`PostalCode`: "5442",
`Country`: "Brazil",
`Phone`: "(11) 555 4640",
`Fax`: null,
`HomePage`: null });
CREATE (t0:`Territories` { `TerritoryID`: "01581",
`TerritoryDescription`: "Westboro                                          ",
`RegionID`: 1 });
CREATE (t1:`Territories` { `TerritoryID`: "01730",
`TerritoryDescription`: "Bedford                                           ",
`RegionID`: 1 });
CREATE (t2:`Territories` { `TerritoryID`: "01833",
`TerritoryDescription`: "Georgetow                                         ",
`RegionID`: 1 });
CREATE (t3:`Territories` { `TerritoryID`: "02116",
`TerritoryDescription`: "Boston                                            ",
`RegionID`: 1 });
CREATE (t4:`Territories` { `TerritoryID`: "02139",
`TerritoryDescription`: "Cambridge                                         ",
`RegionID`: 1 });
CREATE (t5:`Territories` { `TerritoryID`: "02184",
`TerritoryDescription`: "Braintree                                         ",
`RegionID`: 1 });
CREATE (t6:`Territories` { `TerritoryID`: "02903",
`TerritoryDescription`: "Providence                                        ",
`RegionID`: 1 });
CREATE (t7:`Territories` { `TerritoryID`: "03049",
`TerritoryDescription`: "Hollis                                            ",
`RegionID`: 3 });
CREATE (t8:`Territories` { `TerritoryID`: "03801",
`TerritoryDescription`: "Portsmouth                                        ",
`RegionID`: 3 });
CREATE (t9:`Territories` { `TerritoryID`: "06897",
`TerritoryDescription`: "Wilton                                            ",
`RegionID`: 1 });
MATCH (tl0:`Regions`),(tr0:`Regions`)
                WHERE tl0.RegionID = 1
                    AND tr0.RegionID = 1
                CREATE (tl0)-[r0:`Territories`]->(tr0);
MATCH (tl1:`Regions`),(tr1:`Regions`)
                WHERE tl1.RegionID = 1
                    AND tr1.RegionID = 1
                CREATE (tl1)-[r1:`Territories`]->(tr1);
MATCH (tl2:`Regions`),(tr2:`Regions`)
                WHERE tl2.RegionID = 1
                    AND tr2.RegionID = 1
                CREATE (tl2)-[r2:`Territories`]->(tr2);
MATCH (tl3:`Regions`),(tr3:`Regions`)
                WHERE tl3.RegionID = 1
                    AND tr3.RegionID = 1
                CREATE (tl3)-[r3:`Territories`]->(tr3);
MATCH (tl4:`Regions`),(tr4:`Regions`)
                WHERE tl4.RegionID = 1
                    AND tr4.RegionID = 1
                CREATE (tl4)-[r4:`Territories`]->(tr4);
MATCH (tl5:`Regions`),(tr5:`Regions`)
                WHERE tl5.RegionID = 1
                    AND tr5.RegionID = 1
                CREATE (tl5)-[r5:`Territories`]->(tr5);
MATCH (tl6:`Regions`),(tr6:`Regions`)
                WHERE tl6.RegionID = 1
                    AND tr6.RegionID = 1
                CREATE (tl6)-[r6:`Territories`]->(tr6);
MATCH (tl7:`Regions`),(tr7:`Regions`)
                WHERE tl7.RegionID = 3
                    AND tr7.RegionID = 3
                CREATE (tl7)-[r7:`Territories`]->(tr7);
MATCH (tl8:`Regions`),(tr8:`Regions`)
                WHERE tl8.RegionID = 3
                    AND tr8.RegionID = 3
                CREATE (tl8)-[r8:`Territories`]->(tr8);
MATCH (tl9:`Regions`),(tr9:`Regions`)
                WHERE tl9.RegionID = 1
                    AND tr9.RegionID = 1
                CREATE (tl9)-[r9:`Territories`]->(tr9);

MATCH (tl0:`Employees`),(tr0:`Territories`)
                WHERE tl0.EmployeeID = 1
                    AND tr0.TerritoryID = "06897"
                CREATE (tl0)-[r0:`EmployeeTerritories`]->(tr0);
MATCH (tl1:`Employees`),(tr1:`Territories`)
                WHERE tl1.EmployeeID = 1
                    AND tr1.TerritoryID = "19713"
                CREATE (tl1)-[r1:`EmployeeTerritories`]->(tr1);
MATCH (tl2:`Employees`),(tr2:`Territories`)
                WHERE tl2.EmployeeID = 2
                    AND tr2.TerritoryID = "01581"
                CREATE (tl2)-[r2:`EmployeeTerritories`]->(tr2);
MATCH (tl3:`Employees`),(tr3:`Territories`)
                WHERE tl3.EmployeeID = 2
                    AND tr3.TerritoryID = "01730"
                CREATE (tl3)-[r3:`EmployeeTerritories`]->(tr3);
MATCH (tl4:`Employees`),(tr4:`Territories`)
                WHERE tl4.EmployeeID = 2
                    AND tr4.TerritoryID = "01833"
                CREATE (tl4)-[r4:`EmployeeTerritories`]->(tr4);
MATCH (tl5:`Employees`),(tr5:`Territories`)
                WHERE tl5.EmployeeID = 2
                    AND tr5.TerritoryID = "02116"
                CREATE (tl5)-[r5:`EmployeeTerritories`]->(tr5);
MATCH (tl6:`Employees`),(tr6:`Territories`)
                WHERE tl6.EmployeeID = 2
                    AND tr6.TerritoryID = "02139"
                CREATE (tl6)-[r6:`EmployeeTerritories`]->(tr6);
MATCH (tl7:`Employees`),(tr7:`Territories`)
                WHERE tl7.EmployeeID = 2
                    AND tr7.TerritoryID = "02184"
                CREATE (tl7)-[r7:`EmployeeTerritories`]->(tr7);
MATCH (tl8:`Employees`),(tr8:`Territories`)
                WHERE tl8.EmployeeID = 2
                    AND tr8.TerritoryID = "40222"
                CREATE (tl8)-[r8:`EmployeeTerritories`]->(tr8);
MATCH (tl9:`Employees`),(tr9:`Territories`)
                WHERE tl9.EmployeeID = 3
                    AND tr9.TerritoryID = "30346"
                CREATE (tl9)-[r9:`EmployeeTerritories`]->(tr9);
CREATE (t0:`Orders` { `OrderID`: 10248,
`CustomerID`: "VINET",
`EmployeeID`: 5,
`OrderDate`: "1996-07-04 00:00:00.000",
`RequiredDate`: "1996-08-01 00:00:00.000",
`ShippedDate`: "1996-07-16 00:00:00.000",
`ShipVia`: 3,
`Freight`: 32.38,
`ShipName`: "Vins et alcools Chevalier",
`ShipAddress`: "59 rue de l-Abbaye",
`ShipCity`: "Reims",
`ShipRegion`: null,
`ShipPostalCode`: "51100",
`ShipCountry`: "France" });
CREATE (t1:`Orders` { `OrderID`: 10249,
`CustomerID`: "TOMSP",
`EmployeeID`: 6,
`OrderDate`: "1996-07-05 00:00:00.000",
`RequiredDate`: "1996-08-16 00:00:00.000",
`ShippedDate`: "1996-07-10 00:00:00.000",
`ShipVia`: 1,
`Freight`: 11.61,
`ShipName`: "Toms Spezialitäten",
`ShipAddress`: "Luisenstr. 48",
`ShipCity`: "Münster",
`ShipRegion`: null,
`ShipPostalCode`: "44087",
`ShipCountry`: "Germany" });
CREATE (t2:`Orders` { `OrderID`: 10250,
`CustomerID`: "HANAR",
`EmployeeID`: 4,
`OrderDate`: "1996-07-08 00:00:00.000",
`RequiredDate`: "1996-08-05 00:00:00.000",
`ShippedDate`: "1996-07-12 00:00:00.000",
`ShipVia`: 2,
`Freight`: 65.83,
`ShipName`: "Hanari Carnes",
`ShipAddress`: "Rua do Paço, 67",
`ShipCity`: "Rio de Janeiro",
`ShipRegion`: "RJ",
`ShipPostalCode`: "05454-876",
`ShipCountry`: "Brazil" });
CREATE (t3:`Orders` { `OrderID`: 10251,
`CustomerID`: "VICTE",
`EmployeeID`: 3,
`OrderDate`: "1996-07-08 00:00:00.000",
`RequiredDate`: "1996-08-05 00:00:00.000",
`ShippedDate`: "1996-07-15 00:00:00.000",
`ShipVia`: 1,
`Freight`: 41.34,
`ShipName`: "Victuailles en stock",
`ShipAddress`: "2, rue du Commerce",
`ShipCity`: "Lyon",
`ShipRegion`: null,
`ShipPostalCode`: "69004",
`ShipCountry`: "France" });
CREATE (t4:`Orders` { `OrderID`: 10252,
`CustomerID`: "SUPRD",
`EmployeeID`: 4,
`OrderDate`: "1996-07-09 00:00:00.000",
`RequiredDate`: "1996-08-06 00:00:00.000",
`ShippedDate`: "1996-07-11 00:00:00.000",
`ShipVia`: 2,
`Freight`: 51.3,
`ShipName`: "Suprêmes délices",
`ShipAddress`: "Boulevard Tirou, 255",
`ShipCity`: "Charleroi",
`ShipRegion`: null,
`ShipPostalCode`: "B-6000",
`ShipCountry`: "Belgium" });
CREATE (t5:`Orders` { `OrderID`: 10253,
`CustomerID`: "HANAR",
`EmployeeID`: 3,
`OrderDate`: "1996-07-10 00:00:00.000",
`RequiredDate`: "1996-07-24 00:00:00.000",
`ShippedDate`: "1996-07-16 00:00:00.000",
`ShipVia`: 2,
`Freight`: 58.17,
`ShipName`: "Hanari Carnes",
`ShipAddress`: "Rua do Paço, 67",
`ShipCity`: "Rio de Janeiro",
`ShipRegion`: "RJ",
`ShipPostalCode`: "05454-876",
`ShipCountry`: "Brazil" });
CREATE (t6:`Orders` { `OrderID`: 10254,
`CustomerID`: "CHOPS",
`EmployeeID`: 5,
`OrderDate`: "1996-07-11 00:00:00.000",
`RequiredDate`: "1996-08-08 00:00:00.000",
`ShippedDate`: "1996-07-23 00:00:00.000",
`ShipVia`: 2,
`Freight`: 22.98,
`ShipName`: "Chop-suey Chinese",
`ShipAddress`: "Hauptstr. 31",
`ShipCity`: "Bern",
`ShipRegion`: null,
`ShipPostalCode`: "3012",
`ShipCountry`: "Switzerland" });
CREATE (t7:`Orders` { `OrderID`: 10255,
`CustomerID`: "RICSU",
`EmployeeID`: 9,
`OrderDate`: "1996-07-12 00:00:00.000",
`RequiredDate`: "1996-08-09 00:00:00.000",
`ShippedDate`: "1996-07-15 00:00:00.000",
`ShipVia`: 3,
`Freight`: 148.33,
`ShipName`: "Richter Supermarkt",
`ShipAddress`: "Starenweg 5",
`ShipCity`: "Genève",
`ShipRegion`: null,
`ShipPostalCode`: "1204",
`ShipCountry`: "Switzerland" });
CREATE (t8:`Orders` { `OrderID`: 10256,
`CustomerID`: "WELLI",
`EmployeeID`: 3,
`OrderDate`: "1996-07-15 00:00:00.000",
`RequiredDate`: "1996-08-12 00:00:00.000",
`ShippedDate`: "1996-07-17 00:00:00.000",
`ShipVia`: 2,
`Freight`: 13.97,
`ShipName`: "Wellington Importadora",
`ShipAddress`: "Rua do Mercado, 12",
`ShipCity`: "Resende",
`ShipRegion`: "SP",
`ShipPostalCode`: "08737-363",
`ShipCountry`: "Brazil" });
CREATE (t9:`Orders` { `OrderID`: 10257,
`CustomerID`: "HILAA",
`EmployeeID`: 4,
`OrderDate`: "1996-07-16 00:00:00.000",
`RequiredDate`: "1996-08-13 00:00:00.000",
`ShippedDate`: "1996-07-22 00:00:00.000",
`ShipVia`: 3,
`Freight`: 81.91,
`ShipName`: "HILARION-Abastos",
`ShipAddress`: "Carrera 22 con Ave. Carlos Soublette #8-35",
`ShipCity`: "San Cristóbal",
`ShipRegion`: "Táchira",
`ShipPostalCode`: "5022",
`ShipCountry`: "Venezuela" });
MATCH (tl0:`Employees`),(tr0:`Customers`)
                WHERE tl0.EmployeeID = 5
                    AND tr0.CustomerID = "VINET"
                CREATE (tl0)-[r0:`Orders`]->(tr0);
MATCH (tl1:`Employees`),(tr1:`Customers`)
                WHERE tl1.EmployeeID = 6
                    AND tr1.CustomerID = "TOMSP"
                CREATE (tl1)-[r1:`Orders`]->(tr1);
MATCH (tl2:`Employees`),(tr2:`Customers`)
                WHERE tl2.EmployeeID = 4
                    AND tr2.CustomerID = "HANAR"
                CREATE (tl2)-[r2:`Orders`]->(tr2);
MATCH (tl3:`Employees`),(tr3:`Customers`)
                WHERE tl3.EmployeeID = 3
                    AND tr3.CustomerID = "VICTE"
                CREATE (tl3)-[r3:`Orders`]->(tr3);
MATCH (tl4:`Employees`),(tr4:`Customers`)
                WHERE tl4.EmployeeID = 4
                    AND tr4.CustomerID = "SUPRD"
                CREATE (tl4)-[r4:`Orders`]->(tr4);
MATCH (tl5:`Employees`),(tr5:`Customers`)
                WHERE tl5.EmployeeID = 3
                    AND tr5.CustomerID = "HANAR"
                CREATE (tl5)-[r5:`Orders`]->(tr5);
MATCH (tl6:`Employees`),(tr6:`Customers`)
                WHERE tl6.EmployeeID = 5
                    AND tr6.CustomerID = "CHOPS"
                CREATE (tl6)-[r6:`Orders`]->(tr6);
MATCH (tl7:`Employees`),(tr7:`Customers`)
                WHERE tl7.EmployeeID = 9
                    AND tr7.CustomerID = "RICSU"
                CREATE (tl7)-[r7:`Orders`]->(tr7);
MATCH (tl8:`Employees`),(tr8:`Customers`)
                WHERE tl8.EmployeeID = 3
                    AND tr8.CustomerID = "WELLI"
                CREATE (tl8)-[r8:`Orders`]->(tr8);
MATCH (tl9:`Employees`),(tr9:`Customers`)
                WHERE tl9.EmployeeID = 4
                    AND tr9.CustomerID = "HILAA"
                CREATE (tl9)-[r9:`Orders`]->(tr9);
CREATE (t0:`Products` { `ProductID`: 1,
`ProductName`: "Chai",
`SupplierID`: 1,
`CategoryID`: 1,
`QuantityPerUnit`: "10 boxes x 20 bags",
`UnitPrice`: 18,
`UnitsInStock`: 39,
`UnitsOnOrder`: 0,
`ReorderLevel`: 10,
`Discontinued`: "0" });
CREATE (t1:`Products` { `ProductID`: 2,
`ProductName`: "Chang",
`SupplierID`: 1,
`CategoryID`: 1,
`QuantityPerUnit`: "24 - 12 oz bottles",
`UnitPrice`: 19,
`UnitsInStock`: 17,
`UnitsOnOrder`: 40,
`ReorderLevel`: 25,
`Discontinued`: "0" });
CREATE (t2:`Products` { `ProductID`: 3,
`ProductName`: "Aniseed Syrup",
`SupplierID`: 1,
`CategoryID`: 2,
`QuantityPerUnit`: "12 - 550 ml bottles",
`UnitPrice`: 10,
`UnitsInStock`: 13,
`UnitsOnOrder`: 70,
`ReorderLevel`: 25,
`Discontinued`: "0" });
CREATE (t3:`Products` { `ProductID`: 4,
`ProductName`: "Chef Anton's Cajun Seasoning",
`SupplierID`: 2,
`CategoryID`: 2,
`QuantityPerUnit`: "48 - 6 oz jars",
`UnitPrice`: 22,
`UnitsInStock`: 53,
`UnitsOnOrder`: 0,
`ReorderLevel`: 0,
`Discontinued`: "0" });
CREATE (t4:`Products` { `ProductID`: 5,
`ProductName`: "Chef Anton's Gumbo Mix",
`SupplierID`: 2,
`CategoryID`: 2,
`QuantityPerUnit`: "36 boxes",
`UnitPrice`: 21.35,
`UnitsInStock`: 0,
`UnitsOnOrder`: 0,
`ReorderLevel`: 0,
`Discontinued`: "1" });
CREATE (t5:`Products` { `ProductID`: 6,
`ProductName`: "Grandma's Boysenberry Spread",
`SupplierID`: 3,
`CategoryID`: 2,
`QuantityPerUnit`: "12 - 8 oz jars",
`UnitPrice`: 25,
`UnitsInStock`: 120,
`UnitsOnOrder`: 0,
`ReorderLevel`: 25,
`Discontinued`: "0" });
CREATE (t6:`Products` { `ProductID`: 7,
`ProductName`: "Uncle Bob's Organic Dried Pears",
`SupplierID`: 3,
`CategoryID`: 7,
`QuantityPerUnit`: "12 - 1 lb pkgs.",
`UnitPrice`: 30,
`UnitsInStock`: 15,
`UnitsOnOrder`: 0,
`ReorderLevel`: 10,
`Discontinued`: "0" });
CREATE (t7:`Products` { `ProductID`: 8,
`ProductName`: "Northwoods Cranberry Sauce",
`SupplierID`: 3,
`CategoryID`: 2,
`QuantityPerUnit`: "12 - 12 oz jars",
`UnitPrice`: 40,
`UnitsInStock`: 6,
`UnitsOnOrder`: 0,
`ReorderLevel`: 0,
`Discontinued`: "0" });
CREATE (t8:`Products` { `ProductID`: 9,
`ProductName`: "Mishi Kobe Niku",
`SupplierID`: 4,
`CategoryID`: 6,
`QuantityPerUnit`: "18 - 500 g pkgs.",
`UnitPrice`: 97,
`UnitsInStock`: 29,
`UnitsOnOrder`: 0,
`ReorderLevel`: 0,
`Discontinued`: "1" });
CREATE (t9:`Products` { `ProductID`: 10,
`ProductName`: "Ikura",
`SupplierID`: 4,
`CategoryID`: 8,
`QuantityPerUnit`: "12 - 200 ml jars",
`UnitPrice`: 31,
`UnitsInStock`: 31,
`UnitsOnOrder`: 0,
`ReorderLevel`: 0,
`Discontinued`: "0" });
MATCH (tl0:`Categories`),(tr0:`Suppliers`)
                WHERE tl0.ProductID = 1
                    AND tr0.SupplierID = 1
                CREATE (tl0)-[r0:`Products`]->(tr0);
MATCH (tl1:`Categories`),(tr1:`Suppliers`)
                WHERE tl1.ProductID = 2
                    AND tr1.SupplierID = 1
                CREATE (tl1)-[r1:`Products`]->(tr1);
MATCH (tl2:`Categories`),(tr2:`Suppliers`)
                WHERE tl2.ProductID = 3
                    AND tr2.SupplierID = 1
                CREATE (tl2)-[r2:`Products`]->(tr2);
MATCH (tl3:`Categories`),(tr3:`Suppliers`)
                WHERE tl3.ProductID = 4
                    AND tr3.SupplierID = 2
                CREATE (tl3)-[r3:`Products`]->(tr3);
MATCH (tl4:`Categories`),(tr4:`Suppliers`)
                WHERE tl4.ProductID = 5
                    AND tr4.SupplierID = 2
                CREATE (tl4)-[r4:`Products`]->(tr4);
MATCH (tl5:`Categories`),(tr5:`Suppliers`)
                WHERE tl5.ProductID = 6
                    AND tr5.SupplierID = 3
                CREATE (tl5)-[r5:`Products`]->(tr5);
MATCH (tl6:`Categories`),(tr6:`Suppliers`)
                WHERE tl6.ProductID = 7
                    AND tr6.SupplierID = 3
                CREATE (tl6)-[r6:`Products`]->(tr6);
MATCH (tl7:`Categories`),(tr7:`Suppliers`)
                WHERE tl7.ProductID = 8
                    AND tr7.SupplierID = 3
                CREATE (tl7)-[r7:`Products`]->(tr7);
MATCH (tl8:`Categories`),(tr8:`Suppliers`)
                WHERE tl8.ProductID = 9
                    AND tr8.SupplierID = 4
                CREATE (tl8)-[r8:`Products`]->(tr8);
MATCH (tl9:`Categories`),(tr9:`Suppliers`)
                WHERE tl9.ProductID = 10
                    AND tr9.SupplierID = 4
                CREATE (tl9)-[r9:`Products`]->(tr9);
CREATE (t0:`Order Details` { `OrderID`: 10248,
`ProductID`: 11,
`UnitPrice`: 14,
`Quantity`: 12,
`Discount`: 0 });
CREATE (t1:`Order Details` { `OrderID`: 10248,
`ProductID`: 42,
`UnitPrice`: 9.8,
`Quantity`: 10,
`Discount`: 0 });
CREATE (t2:`Order Details` { `OrderID`: 10248,
`ProductID`: 72,
`UnitPrice`: 34.8,
`Quantity`: 5,
`Discount`: 0 });
CREATE (t3:`Order Details` { `OrderID`: 10249,
`ProductID`: 14,
`UnitPrice`: 18.6,
`Quantity`: 9,
`Discount`: 0 });
CREATE (t4:`Order Details` { `OrderID`: 10249,
`ProductID`: 51,
`UnitPrice`: 42.4,
`Quantity`: 40,
`Discount`: 0 });
CREATE (t5:`Order Details` { `OrderID`: 10250,
`ProductID`: 41,
`UnitPrice`: 7.7,
`Quantity`: 10,
`Discount`: 0 });
CREATE (t6:`Order Details` { `OrderID`: 10250,
`ProductID`: 51,
`UnitPrice`: 42.4,
`Quantity`: 35,
`Discount`: 0.15 });
CREATE (t7:`Order Details` { `OrderID`: 10250,
`ProductID`: 65,
`UnitPrice`: 16.8,
`Quantity`: 15,
`Discount`: 0.15 });
CREATE (t8:`Order Details` { `OrderID`: 10251,
`ProductID`: 22,
`UnitPrice`: 16.8,
`Quantity`: 6,
`Discount`: 0.05 });
CREATE (t9:`Order Details` { `OrderID`: 10251,
`ProductID`: 57,
`UnitPrice`: 15.6,
`Quantity`: 15,
`Discount`: 0.05 });
MATCH (tl0:`Orders`),(tr0:`Products`)
                WHERE tl0.OrderID = 10248
                    AND tr0.ProductID = 11
                CREATE (tl0)-[r0:`Order Details`]->(tr0);
MATCH (tl1:`Orders`),(tr1:`Products`)
                WHERE tl1.OrderID = 10248
                    AND tr1.ProductID = 42
                CREATE (tl1)-[r1:`Order Details`]->(tr1);
MATCH (tl2:`Orders`),(tr2:`Products`)
                WHERE tl2.OrderID = 10248
                    AND tr2.ProductID = 72
                CREATE (tl2)-[r2:`Order Details`]->(tr2);
MATCH (tl3:`Orders`),(tr3:`Products`)
                WHERE tl3.OrderID = 10249
                    AND tr3.ProductID = 14
                CREATE (tl3)-[r3:`Order Details`]->(tr3);
MATCH (tl4:`Orders`),(tr4:`Products`)
                WHERE tl4.OrderID = 10249
                    AND tr4.ProductID = 51
                CREATE (tl4)-[r4:`Order Details`]->(tr4);
MATCH (tl5:`Orders`),(tr5:`Products`)
                WHERE tl5.OrderID = 10250
                    AND tr5.ProductID = 41
                CREATE (tl5)-[r5:`Order Details`]->(tr5);
MATCH (tl6:`Orders`),(tr6:`Products`)
                WHERE tl6.OrderID = 10250
                    AND tr6.ProductID = 51
                CREATE (tl6)-[r6:`Order Details`]->(tr6);
MATCH (tl7:`Orders`),(tr7:`Products`)
                WHERE tl7.OrderID = 10250
                    AND tr7.ProductID = 65
                CREATE (tl7)-[r7:`Order Details`]->(tr7);
MATCH (tl8:`Orders`),(tr8:`Products`)
                WHERE tl8.OrderID = 10251
                    AND tr8.ProductID = 22
                CREATE (tl8)-[r8:`Order Details`]->(tr8);
MATCH (tl9:`Orders`),(tr9:`Products`)
                WHERE tl9.OrderID = 10251
                    AND tr9.ProductID = 57
                CREATE (tl9)-[r9:`Order Details`]->(tr9);