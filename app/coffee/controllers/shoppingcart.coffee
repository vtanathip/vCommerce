'use strict'

angular.module('vCommerceApp')
	.controller 'ShoppingCartCtrl', ($scope,$state,pageConfig)->
		$scope.pageConfig = pageConfig
		$scope.proceedToCheckOut = () ->
			$state.go 'checkout'
			return

		return