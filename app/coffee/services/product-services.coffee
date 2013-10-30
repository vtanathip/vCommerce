'use strict'

angular.module('vCommerceApp')
	.factory 'product', ($http)->
		server = 'http://localhost:5000/'
		return {
			getFeatureProduct : () ->
				return $http.get(server + 'getFeatureProduct').then (response)->
					return response.data
			,getBestSellerProduct : () ->
				return $http.get(server + 'getBestSellerProduct').then (response)->
					return response.data
			,getAllProducts : () ->
				return $http.get(server + 'products').then (response)->
					return response.data
		}
