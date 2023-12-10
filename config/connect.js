const mysql = require("mysql")
 const connection = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"",
    database:"mult-venter"
})
module.exports = connection