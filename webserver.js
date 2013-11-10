/* require dependencies */
var express  = require('express');
var winston  = require('winston');
var mongoose = require('mongoose');

var app = express();
app.use(express.json());
app.use(express.urlencoded());

var db_url =  process.env.MONGOLAB_URI || process.env.MONGOHQ_URL || 'mongodb://localhost:27017/vCommerce';
var db  = mongoose.connect(db_url,function(error){
	if (error) { 
		winston.info('Web Server having problem when create connection to database.');
		throw error; 
	}else{
		winston.info('created connection with database.');
	}
});

var api = require('./server/controllers/api.js');
app.get('/get/all/products', api.listProduct);
app.post('/get/products', api.getProduct);
app.get('/get/user', api.listUser);
app.get('/get/featureProduct', api.getFeatureProduct);
app.get('/get/bestSellerProduct', api.getBestSellerProduct);
app.post('/save/user',api.saveUser);
app.post('/find/user',api.getUser);

app.listen( process.env.PORT || 5000 );

winston.info('Web Server is bootstrap ...');

app.get('/', function(request, response) {
   response.sendfile(__dirname + '/index.html');
});

