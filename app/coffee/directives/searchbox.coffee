'use strict'

angular.module('vCommerceApp')
	.directive 'searchBox', () ->
		directiveDefinitionObject =
			restrict: 'E',
			scope: 
				data: '=',
			templateUrl: 'templates/searchbox.html',
			replace: false,
			controller: ($scope,$state) ->
				return
		return directiveDefinitionObject