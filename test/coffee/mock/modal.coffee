'use strict'

mockModalModule = angular.module 'modalMock', []
mockModalModule.service 'modalLoading', () ->
	isShowing = false
	this.show = (message)->
		isShowing = true
		return
	this.dismiss = ()->
		isShowing = false
		return
	this.isShowing = ()->
		return isShowing
	return this
