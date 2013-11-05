'use strict'

angular.module('vCommerceApp')
	.controller 'ProductCtrl' , ($scope,pageConfig,product,$stateParams,toaster,localStorageService) ->
		$scope.pageConfig = pageConfig

		product.getProduct($stateParams).then(
			(response) ->
				$scope.product = response
				return
				)

		$scope.addToCart = () ->
			toaster.pop('warning', "Added", $scope.product.name + " to shopping cart.")
			value  = localStorageService.get('shoppingcart')
			if value
				value.push $scope.product
				localStorageService.add 'shoppingcart' , value
				return
			else
				myShoppingCart = new Array()
				myShoppingCart.push $scope.product
				localStorageService.add 'shoppingcart' , myShoppingCart
				return
		return