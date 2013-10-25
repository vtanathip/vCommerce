'use strict';

describe 'Controller: MainCtrl', () ->
  
  scope = null
  mockPageConfig = null

  beforeEach module 'vCommerceApp'
  beforeEach module 'pageInfoMock'

  beforeEach inject ($controller,$rootScope,pageInfo) ->
    scope = $rootScope.$new()
    mockPageConfig = pageInfo
    MainCtrl = $controller 'MainCtrl', 
      $scope: scope,
      pageConfig: mockPageConfig
    return

  it 'should attach a list of awesomeThings to the scope', ()->
    expect(scope.awesomeThings.length).toBe 3
    return
  return