'use strict'

angular.module('vCommerceApp')
	.controller 'CatalogCtrl' , ($scope,$state) ->
		$scope.goToProductDetail = (productName)->
			$state.go "product", { product : productName}
			return
		return