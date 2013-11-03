'use strict'

angular.module('vCommerceApp')
	.factory 'user', ($http)->
		server = 'http://localhost:5000'
		return {
			,getUser : (data) ->
				return $http.post(server + '/find/user',JSON.stringify(data)).then (response)->
					return response.data
			,saveUser : (data) ->
				return $http.post(server + '/save/user' , JSON.stringify(data)).then (response)->
					return response.data
		}
