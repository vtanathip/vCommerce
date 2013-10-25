'use strict'

angular.module('vCommerceApp')
	.factory 'pageInfo' , ($http,$rootScope) ->
		return getPageInfo : (page)-> 
				return $http.get('configuration/pages/' + $rootScope.lang + '/' + page + '.json').then (response)->
					return response.data
		return