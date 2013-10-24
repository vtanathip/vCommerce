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
	        controller: ($scope) ->

	        	scrollconfig =
	        		showArrows: true,
			        horizontalDragMinWidth: 28,
			        horizontalDragMaxWidth: 28 

	        	$('.scroll-pane').jScrollPane(scrollconfig)
	        	
	        	return

		return directiveDefinitionObject