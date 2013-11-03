'use strict'

angular.module('vCommerceApp')
	.controller 'ProductCtrl' , ($scope,pageConfig) ->
		$scope.pageConfig = pageConfig
		return