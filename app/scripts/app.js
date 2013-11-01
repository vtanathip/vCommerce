'use strict';

angular.module('vCommerceApp', [
  'LocalStorageModule',
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ui.router',
  'ui.bootstrap'
])
  .config(function ($stateProvider, $urlRouterProvider) {
    
    $urlRouterProvider.otherwise("/");

    var MainCtrlResolver = {
        pageConfig : function(pageInfo) {
           return pageInfo.getPageInfo('main');
        },
        featureProduct : function(product){
          return product.getFeatureProduct();
        }
    };

    $stateProvider.state('main', {
        url: "/",
        templateUrl : 'views/main.html',
        controller  : 'MainCtrl',
        resolve     : MainCtrlResolver
    }).
    state('signup',{
        url: "/signup",
        templateUrl : 'views/signup.html',
        controller  : 'SignUpCtrl'
    }).
    state('signin',{
      url: '/signin',
      templateUrl: 'views/signin.html',
      controller: 'SignInCtrl'
    }).
    state('catalog',{
      url: "/catalog",
      templateUrl : 'views/catalog.html',
      controller  : 'CatalogCtrl'
    }).
    state('product',{
      url: "/product",
      templateUrl : 'views/product.html',
      controller  : 'ProductCtrl'
    }).
    state('shoppingcart',{
      url: '/shoppingcart',
      templateUrl: 'views/shoppingcart.html',
      controller: 'ShoppingCartCtrl'
    }).
    state('checkout',{
      url: '/checkout',
      templateUrl: 'views/checkout.html',
      controller: 'CheckOutCtrl'
    });
    
  });

angular.module('vCommerceApp').run(function($rootScope) {
    $rootScope.lang = 'en';
});