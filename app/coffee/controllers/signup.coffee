'use strict'

angular.module('vCommerceApp')
	.controller 'SignUpCtrl', ($scope,modalLoading,user) ->

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