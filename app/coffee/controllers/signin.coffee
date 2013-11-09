'use strict'

angular.module('vCommerceApp')
	.controller 'SignInCtrl', ($scope,$state,pageConfig,modalLoading,user,localStorageService) ->
		
		$scope.pageConfig = pageConfig

		$scope.getUser = (data)->

			modalLoading.show({
	            heading     : 'Heading',
	            description : 'description'
	        })
	        
	        user.getUser(data).then((response)->
	        		modalLoading.dismiss()
	        		localStorageService.add 'user',response
	        		$state.go 'main'
	        		return)

			return

		return