'use strict'

angular.module('vCommerceApp')
	.controller 'ProductCtrl' , ($scope,pageConfig,product,$stateParams,toaster) ->
		$scope.pageConfig = pageConfig

		product.getProduct($stateParams).then(
			(response) ->
				$scope.product = response
				return
				)

		$scope.addToCart = () ->
			toaster.pop('warning', "Added", $scope.product.name + " to shopping cart.")
			return

		return