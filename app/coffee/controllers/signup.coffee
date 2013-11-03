'use strict'

angular.module('vCommerceApp')
	.controller 'SignUpCtrl', ($scope,modalLoading,user,pageConfig) ->

		$scope.pageConfig = pageConfig

		$scope.saveUser = (data)->

			modalLoading.show({
	            heading     : 'Heading',
	            description : 'description'
	        })
	        
	        user.saveUser(data).then((response)->
	        		modalLoading.dismiss()
	        		return)

			return

		return