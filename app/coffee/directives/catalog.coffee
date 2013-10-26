'use strict';

angular.module('vCommerceApp')
	.directive 'catalog', ->
		directiveDefinitionObject =
			restrict : 'E',
			scope : 
	            data      : '=',
	        templateUrl : 'templates/catalog.html',
	        replace: false,
	        compile: ($scope) ->
	        	$('#sort-nav ul li').hover () ->
	        		$(this).find('.dd').show()
	        		return
	        	, ->
	        		$(this).find('.dd').hide()
	        		return
	        	return
	        controller: ($scope) ->
	        	
	        	return
		return directiveDefinitionObject