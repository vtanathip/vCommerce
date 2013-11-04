'use strict'

angular.module('vCommerceApp')
	.controller 'ProductCtrl' , ($scope,pageConfig,product,$stateParams) ->
		$scope.pageConfig = pageConfig

		product.getProduct($stateParams).then(
			(response) ->
				$scope.product = response
				return
				)

		return