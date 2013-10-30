'use strict';

angular.module('vCommerceApp')
	.controller 'MainCtrl' , ($scope,$state,pageConfig,featureProduct) ->
		$scope.pageConfig = pageConfig
		$scope.featureProduct = featureProduct

		$scope.navigateToMenu = (state)->
	    	$state.go state
	    	return

	    $scope.viewShoppingCart = ()->
	    	$state.go 'shoppingcart'
	    	return

	    return