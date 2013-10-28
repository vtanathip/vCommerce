var mongoose = require('mongoose')
   ,Schema = mongoose.Schema
   ,ObjectId = Schema.ObjectId;
 
var productSchema = new Schema({
    name	: String,
    code	: String,
    price	: Number,
    feature : Boolean
}, { collection:'products'} );
 
module.exports = mongoose.model('products', productSchema);