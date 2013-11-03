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

    var SignUpCtrlResolver = {
        pageConfig : function(pageInfo) {
           return pageInfo.getPageInfo('signup');
        }
    };

    var SignInCtrlResolver = {
        pageConfig : function(pageInfo) {
           return pageInfo.getPageInfo('signin');
        }
    };

    var CatalogCtrlResolver = {
        pageConfig : function(pageInfo) {
           return pageInfo.getPageInfo('catalog');
        }
    };

    var ProductCtrlResolver = {
        pageConfig : function(pageInfo) {
           return pageInfo.getPageInfo('product');
        }
    };

    var ShopppingCtrlResolver = {
        pageConfig : function(pageInfo) {
           return pageInfo.getPageInfo('shopping');
        }
    };

    var CheckOutCtrlResolver = {
        pageConfig : function(pageInfo) {
           return pageInfo.getPageInfo('checkout');
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
        controller  : 'SignUpCtrl',
        resolve     : SignUpCtrlResolver
    }).
    state('signin',{
        url: '/signin',
        templateUrl: 'views/signin.html',
        controller: 'SignInCtrl',
        resolve     : SignInCtrlResolver
    }).
    state('catalog',{
        url: "/catalog",
        templateUrl : 'views/catalog.html',
        controller  : 'CatalogCtrl',
        resolve     : CatalogCtrlResolver
    }).
    state('product',{
        url: "/product",
        templateUrl : 'views/product.html',
        controller  : 'ProductCtrl',
        resolve     : ProductCtrlResolver
    }).
    state('shoppingcart',{
        url: '/shoppingcart',
        templateUrl: 'views/shoppingcart.html',
        controller: 'ShoppingCartCtrl',
        resolve     : ShopppingCtrlResolver
    }).
    state('checkout',{
        url: '/checkout',
        templateUrl: 'views/checkout.html',
        controller: 'CheckOutCtrl',
        resolve     : CheckOutCtrlResolver
    });
    
  });

angular.module('vCommerceApp').run(function($rootScope) {
    $rootScope.lang = 'en';
});