/* require dependencies */
var express  = require('express');
var winston  = require('winston');
var mongoose = require('mongoose');

var app = express();
var db  = mongoose.connect('mongodb://localhost:27017/vCommerce',function(error){
	if (error) { 
		winston.info('Web Server having problem when create connection to database.');
		throw error; 
	}else{
		winston.info('created connection with database.');
	}
});

var api = require('./server/controllers/api.js');
app.get('/products', api.listProduct);
app.get('/user', api.listUser);
app.get('/getFeatureProduct', api.getFeatureProduct);
app.get('/getBestSellerProduct', api.getBestSellerProduct);

app.listen( process.env.PORT || 5000 );

winston.info('Web Server is bootstrap ...');

app.get('/', function(request, response) {
   response.send({text:"Hello World."});
});
