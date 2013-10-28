/* require dependencies */
var express  = require('express');
var winston  = require('winston');
var mongoose = require('mongoose');
/* data model */
var products = require('./server/model/product.js');
var user 	 = require('./server/model/user.js');

var app = express();
var db  = mongoose.connect('mongodb://localhost:27017/vCommerce',function(error){
	if (error) { 
		winston.info('Web Server having problem when create connection to database.');
		throw error; 
	}else{
		winston.info('created connection with database.');
	}
});

app.listen( process.env.PORT || 5000 );

winston.info('Web Server is bootstrap ...');

app.get('/', function(request, response) {
   response.send({text:"Hello World."});
});


products.findOne({ name: 'XR-34' }, function(err, a) {
  if (err) return console.error(err);
  console.log('result: ' + a);
});

products.find(function(err, a) {
  if (err) return console.error(err);
  console.dir(a);
});

user.find(function(err, a) {
  if (err) return console.error(err);
  console.dir(a);
});