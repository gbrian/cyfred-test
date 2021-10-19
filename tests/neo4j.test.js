const neo4j = require('neo4j-driver')
const driver = neo4j.driver(
  `neo4j://${process.env.NEO4J_HOST}/`,
  neo4j.auth.basic('neo4j', 'CyferdTest!')
)

const session = driver.session({
    database:'Northwind',
    defaultAccessMode: neo4j.session.WRITE
})

// Run a Cypher statement, reading the result in a streaming manner as records arrive:
session
  .run('MERGE (alice:Person {name : $nameParam}) RETURN alice.name AS name', {
    nameParam: 'Alice'
  })
  .subscribe({
    onKeys: keys => {
      console.log(keys)
    },
    onNext: record => {
      console.log(record.get('name'))
    },
    onCompleted: () => {
      session.close() // returns a Promise
      driver.close()
    },
    onError: error => {
      console.log(error)
    }
  })

  