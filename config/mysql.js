const mysql = require("mysql");

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "123!",
  database: "eduwork-ceruds",
});

module.exports = connection;
