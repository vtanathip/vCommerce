'use strict'

angular.module('vCommerceApp')
	.controller 'ShoppingCartCtrl', ($scope,$state,pageConfig,localStorageService)->
		$scope.pageConfig = pageConfig
		$scope.quantitydata = 1

		value  = localStorageService.get('shoppingcart')
		if value
			$scope.itemslist = value
		else
			$scope.itemslist = {}

		$scope.proceedToCheckOut = () ->
			localStorageService.add 'result' , value
			$state.go 'checkout'
			return

		return