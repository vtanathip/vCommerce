'use strict'

angular.module('vCommerceApp')
	.controller 'ShoppingCartCtrl', ($scope,$state)->

		$scope.proceedToCheckOut = () ->
			$state.go 'checkout'
			return

		return