const mysql = require("mysql");

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'projetdb',
});

connection.connect((err) => {
  if (err) console.log(err);
  else console.log("MySQL is connected...");
});

module.exports = connection;
