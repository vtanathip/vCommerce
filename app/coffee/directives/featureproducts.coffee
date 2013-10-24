'use strict';

angular.module('vCommerceApp')
	.directive 'featureProducts', ->
		directiveDefinitionObject =
			restrict : 'E',
			scope : {
	            data      : '='
	        },
	        templateUrl : 'templates/featureproducts.html',
	        replace: false

		return directiveDefinitionObject