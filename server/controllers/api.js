/* data model */
var products = require('../model/product.js');
var user 	 = require('../model/user.js');

exports.listProduct = function(req, res) {
  products.find(function(err, products) {
    res.send(products);
  });
}

exports.listUser = function(req, res) {
  user.find(function(err, user) {
    res.send(user);
  });
}

exports.getFeatureProduct = function(req, res) {
  products.find({ feature: true },function(err, products) {
    res.send(products);
  });
}

exports.getBestSellerProduct = function(req, res) {
  products.find({ feature: false },function(err, products) {
    res.send(products);
  });
}

exports.saveUser = function(req, res) {

  var body = req.body;
  var userModel = new user({
    email     : body.email,
    password  : body.password,
    name      : body.name,
    phone     : body.phone,
    city      : body.city,
    country   : body.country
  });

  userModel.save(function(err,userModel,numberAffected){
    if(err === null){
      res.status(200);
      return res.send(true);
    }else{
      res.status(500);
      return res.send(false);
    }
  });

}