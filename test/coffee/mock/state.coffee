'use strict'

stateMockModule = angular.module 'stateMock',[]
stateMockModule.service '$state', () ->
	this.targetState = null
	this.go = (targetState) ->
		this.targetState = targetState
		return
	return