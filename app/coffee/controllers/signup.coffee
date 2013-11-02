'use strict'

angular.module('vCommerceApp')
	.controller 'SignUpCtrl', ($scope,modalLoading) ->

		modalLoading.show({
            heading     : 'Heading',
            description : 'description'
        });

		return