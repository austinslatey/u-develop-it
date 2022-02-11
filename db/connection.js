const mysql = require('mysql2');

const db = mysql.createConnection({
  host: 'localhost',
  // Your MySQL username,
  user: 'austins',
  // Your MySQL password
  password: 'austinsgeneric',
  database: 'election'
});

module.exports = db;