'use strict'

angular.module('vCommerceApp')
	.controller 'SignInCtrl', ($scope,modalLoading,user) ->
		
		$scope.getUser = (data)->

			modalLoading.show({
	            heading     : 'Heading',
	            description : 'description'
	        })
	        
	        user.getUser(data).then((response)->
	        		modalLoading.dismiss()
	        		return)

			return

		return