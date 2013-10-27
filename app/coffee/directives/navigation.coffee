'use strict'

angular.module('vCommerceApp')
	.directive 'nav', () ->
		directiveDefinitionObject =
			restrict: 'E',
			scope: 
				data: '=',
			templateUrl: 'templates/navigation.html',
			replace: false,
			controller: ($scope,$state) ->
				$scope.navigateToMenu = (state) ->
					$state.go state
					return
				return
		return directiveDefinitionObject