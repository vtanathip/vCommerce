var express = require('express');
var winston = require('winston');

var app = express();
 
app.listen( process.env.PORT || 5000 );

winston.info('Web Server is bootstrap ...');

app.get('/', function(request, response) {
   response.send({text:"Hello World."});
});