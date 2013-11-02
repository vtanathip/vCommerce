'use strict'

angular.module('vCommerceApp')
	.factory 'modalLoading', ($q,$modal) ->
		modalInstance = undefined

		performShow = (message) ->
			modalOptions = {
				keyboard	: false,
				backdrop	: 'static',
				windowClass : 'modal',
				templateUrl : 'templates/modals/loading-modal.html',
				controller  : ($scope) ->
					$scope.message = message
					return	
			}
			modalInstance = $modal.open(modalOptions)

			return

		show = (message) ->
			if modalInstance is undefined
				performShow(message)
			
			return

		dismiss = () ->
			if modalInstance
				modalInstance.opened.then(()->
					modalInstance.dismiss()
					modalInstance = undefined
					return
					)
			return

		isShowing = () ->
			return modalInstance?

		return {
			show 	  : show,
			dismiss	  : dismiss,
			isShowing : isShowing
		}