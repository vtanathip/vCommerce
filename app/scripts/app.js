'use strict';

angular.module('vCommerceApp', [
  'LocalStorageModule',
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ui.router'
])
  .config(function ($stateProvider, $urlRouterProvider) {
    
    $urlRouterProvider.otherwise("/");

    var MainCtrlResolver = {
        pageConfig : function(pageInfo) {
           return pageInfo.getPageInfo('main');
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
    state('catalog',{
      url: "/catalog",
      templateUrl : 'views/catalog.html',
      controller  : 'CatalogCtrl'
    });
    
  });

angular.module('vCommerceApp').run(function($rootScope) {
    $rootScope.lang = 'en';
});