'use strict';
var mysql = require('mysql');
var express = require('express');

var app = express();
var port = process.env.PORT || 8005;
var responseStr = "MySQL Data:";

app.get('/',function(req,res){
   
   var mysqlHost = process.env.MYSQL_HOST || 'localhost';
   var mysqlPort = process.env.MYSQL_PORT || '3306';
   var mysqlUser = process.env.MYSQL_USER || 'root';
   var mysqlPass = process.env.MYSQL_PASS || 'root';
   var mysqlDB   = process.env.MYSQL_DB   || 'bank_db';

   var connectionOptions = {
     host: mysqlHost,
     port: mysqlPort,
     user: mysqlUser,
     password: mysqlPass,
     database: mysqlDB
   };

   console.log('MySQL Connection config:');
   console.log(connectionOptions);

   var connection = mysql.createConnection(connectionOptions);

   connection.connect();
 
   connection.query('SELECT * FROM MOE_ITEM_T', function (error, results, fields) {
     if (error) throw error;

     if(responseStr.length == 0)
        responseStr = 'No records found';

     console.log(results);

     res.status(200).send(results);
   });
    
   connection.end();
});


app.listen(port, function(){
    console.log('Sample mySQL app listening on port ' + port);
});