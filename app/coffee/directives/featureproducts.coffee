'use strict';

angular.module('vCommerceApp')
	.directive 'featureProducts', ->
		directiveDefinitionObject =
			restrict : 'E',
			scope : 
	            data      : '=',
	        templateUrl : 'templates/featureproducts.html',
	        replace: false,
	        controller: ($scope,$state) ->

	        	$scope.goToProductDetail = (productName)->
	        		$state.go "product", { product : productName}
	        		return

	        	return

		return directiveDefinitionObject