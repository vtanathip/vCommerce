'use strict'

angular.module('vCommerceApp')
	.controller 'SignUpCtrl', ($scope,modalLoading,product) ->

		$scope.saveUser = (data)->

			modalLoading.show({
	            heading     : 'Heading',
	            description : 'description'
	        })
	        
	        product.saveUser(data).then((response)->
	        		modalLoading.dismiss()
	        		return)

			return

		return