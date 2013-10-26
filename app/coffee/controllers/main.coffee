'use strict';

angular.module('vCommerceApp')
	.controller 'MainCtrl' , ($scope,$state,pageConfig) ->
		$scope.pageConfig = pageConfig
		$scope.awesomeThings = [
	      'HTML5 Boilerplate'
	      'AngularJS'
	      'Karma'
	    ];

	    $scope.navigateToMenu = (state)->
	    	$state.go state
	    	return

	    return