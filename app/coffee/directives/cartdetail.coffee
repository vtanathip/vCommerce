'use strict'

angular.module('vCommerceApp')
	.directive 'cartDetail', () ->
		directiveDefinitionObject =
			restrict: 'E',
			scope: 
				meta: '=',
			templateUrl: 'templates/cartdetail.html',
			replace: false,
			controller: ($scope,$state) ->
				$scope.viewShoppingCart = () ->
					$state.go 'shoppingcart'
					return
				return
		return directiveDefinitionObject