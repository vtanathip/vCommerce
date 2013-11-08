'use strict'

angular.module('vCommerceApp')
	.controller 'ProductCtrl' , ($scope,pageConfig,product,$stateParams,toaster,localStorageService) ->
		$scope.pageConfig = pageConfig
		temp = null

		product.getProduct($stateParams).then(
			(response) ->
				$scope.product = response
				return
				)

		$scope.addToCart = () ->
			toaster.pop('warning', "Added", $scope.product.name + " to shopping cart.")
			items  = localStorageService.get('shoppingcart')
			if items

				productName = localStorageService.get('productName')
				if _.indexOf(productName , $scope.product.name) is -1
					productName.push $scope.product.name
					localStorageService.add 'productName' , productName
					$scope.product.quantity = 0
					items.push $scope.product

				for item in items

					if (_.indexOf(productName , $scope.product.name) isnt -1) and (item.name is $scope.product.name)
						item.quantity = item.quantity + 1
						item.total	  = $scope.product.price * item.quantity

				localStorageService.add 'shoppingcart' , items

				return
			else
				myShoppingCart = new Array()
				myShoppingCart.push $scope.product

				$scope.product.quantity = 1

				$scope.product_array = []
				$scope.product_array.push $scope.product.name

				localStorageService.add 'shoppingcart' , myShoppingCart
				localStorageService.add 'productName' , $scope.product_array
				return
		return