var mongoose = require('mongoose')
   ,Schema = mongoose.Schema;

var userSchema = new Schema({
    email	: String,
    password: String,
    name	: String,
    phone	: String,
    city	: String,
    country : String
} , { collection:'user'});
 
module.exports = mongoose.model('user', userSchema);