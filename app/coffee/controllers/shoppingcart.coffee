'use strict'

angular.module('vCommerceApp')
	.controller 'ShoppingCartCtrl', ($scope,$state,pageConfig,localStorageService)->
		$scope.pageConfig = pageConfig
		

		value  = localStorageService.get('shoppingcart')
		if value
			$scope.itemslist = value
		else
			$scope.itemslist = {}

		$scope.proceedToCheckOut = () ->
			$state.go 'checkout'
			return

		return