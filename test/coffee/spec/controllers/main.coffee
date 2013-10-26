'use strict';

describe 'Controller: MainCtrl', () ->
  
  scope = null
  mockPageConfig = null
  mockState = null

  beforeEach module 'vCommerceApp'
  beforeEach module 'pageInfoMock'
  beforeEach module 'stateMock'

  beforeEach inject ($controller,$rootScope,$state,pageInfo) ->
    scope = $rootScope.$new()
    mockPageConfig = pageInfo
    mockState = $state
    MainCtrl = $controller 'MainCtrl', 
      $scope: scope,
      $state: mockState,
      pageConfig: mockPageConfig
    return

  it 'should attach a list of awesomeThings to the scope', ()->
    expect(scope.awesomeThings.length).toBe 3
    return

  it 'should change state to signup', ()->
    scope.navigateToMenu 'signup'
    expect(mockState.targetState).toBe('signup')
    return
    
  return