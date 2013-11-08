'use strict'

angular.module('vCommerceApp')
	.controller 'CheckOutCtrl', ($scope,$state,pageConfig,toaster,localStorageService) ->
		$scope.pageConfig = pageConfig

		$scope.sendStatement = () ->
			toaster.pop('success', "Sended", "Wait for email statement.")
			result  = localStorageService.get('result')
			localStorageService.add 'shoppingcart' , undefined
			localStorageService.add 'productName' , undefined
			localStorageService.add 'result', undefined
			return

		$scope.backToMain = () ->
			$state.go 'main'
			return

		return