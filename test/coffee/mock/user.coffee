'use strict'

userModule = angular.module 'userMock', [] 
userModule.factory 'user', ($q)->
	getUserDeffered = $q.defer()
	saveUserDeffered = $q.defer()
	return {
		getUser : (data)->
			return getUserDeffered.promise
		saveUser : (data)->
			return saveUserDeffered.promise
	}
	return