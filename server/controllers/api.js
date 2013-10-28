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

// list all data in database for testing only.
// products.findOne({ name: 'XR-34' }, function(err, a) {
//   if (err) return console.error(err);
//   console.log('result: ' + a);
// });

// products.find(function(err, a) {
//   if (err) return console.error(err);
//   console.dir(a);
// });

// user.find(function(err, a) {
//   if (err) return console.error(err);
//   console.dir(a);
// });