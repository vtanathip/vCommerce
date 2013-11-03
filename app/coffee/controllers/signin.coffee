'use strict'

angular.module('vCommerceApp')
	.controller 'SignInCtrl', ($scope,$state,pageConfig,modalLoading,user) ->
		
		$scope.pageConfig = pageConfig

		$scope.getUser = (data)->

			modalLoading.show({
	            heading     : 'Heading',
	            description : 'description'
	        })
	        
	        user.getUser(data).then((response)->
	        		modalLoading.dismiss()
	        		$state.go 'main'
	        		return)

			return

		return