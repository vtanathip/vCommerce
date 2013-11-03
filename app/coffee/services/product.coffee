'use strict'

angular.module('vCommerceApp')
	.factory 'product', ($http)->
		server = 'http://localhost:5000'
		return {
			getFeatureProduct : () ->
				return $http.get(server + '/get/featureProduct').then (response)->
					return response.data
			,getBestSellerProduct : () ->
				return $http.get(server + '/get/bestSellerProduct').then (response)->
					return response.data
			,getAllProducts : () ->
				return $http.get(server + '/get/products').then (response)->
					return response.data
		}
