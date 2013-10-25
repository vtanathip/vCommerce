'use strict';

angular.module('vCommerceApp')
	.directive 'bestSeller', ->
		directiveDefinitionObject =
			restrict : 'E',
			scope : {
	            data      : '='
	        },
	        templateUrl : 'templates/bestseller.html',
	        replace: false,
	        compile: ($scope) ->
	        
	        	scrollconfig =
	        		showArrows: true,
			        horizontalDragMinWidth: 28,
			        horizontalDragMaxWidth: 28 

	        	$('.scroll-pane').jScrollPane(scrollconfig)

	        	return

	        controller: ($scope) ->

	        	return

		return directiveDefinitionObject