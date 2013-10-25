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
    });
    
  });

angular.module('vCommerceApp').run(function($rootScope) {
    $rootScope.lang = 'en';
});