'use strict'

angular.module('vCommerceApp')
	.controller 'CatalogCtrl' , ($scope,$state,pageConfig) ->
		$scope.pageConfig = pageConfig
		$scope.goToProductDetail = (productName)->
			$state.go "product", { product : productName}
			return
		return