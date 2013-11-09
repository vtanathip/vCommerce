'use strict'

angular.module('vCommerceApp')
	.directive 'nav', () ->
		directiveDefinitionObject =
			restrict: 'E',
			scope: 
				data: '=',
			templateUrl: 'templates/navigation.html',
			replace: false,
			controller: ($scope,$state,localStorageService) ->
				
				$scope.user = null
				
				$scope.navigateToMenu = (state) ->
					$state.go state
					return

				$scope.signOut = () ->
					localStorageService.add 'user', undefined
					return

				$scope.checkSignIn = () ->
					if (localStorageService.get('user') is null) or (localStorageService.get('user') is undefined)
						return false
					else
						$scope.user = localStorageService.get('user')
						return true
					return

				return
		return directiveDefinitionObject