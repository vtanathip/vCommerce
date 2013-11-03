'use strict'

angular.module('vCommerceApp')
	.controller 'CheckOutCtrl', ($scope,pageConfig) ->
		$scope.pageConfig = pageConfig
		return