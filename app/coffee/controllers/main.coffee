'use strict';

angular.module('vCommerceApp')
	.controller 'MainCtrl' , ($scope,pageConfig) ->
		$scope.pageConfig = pageConfig
		$scope.awesomeThings = [
	      'HTML5 Boilerplate'
	      'AngularJS'
	      'Karma'
	    ];
	    return