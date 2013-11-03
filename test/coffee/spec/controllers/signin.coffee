'use strict';

describe 'Controller: SignInCtrl', () ->
  
  scope = data = mockPageConfig = mockState = mockModalLoading = mockUser = null

  beforeEach module 'vCommerceApp'
  beforeEach module 'pageInfoMock'
  beforeEach module 'stateMock'
  beforeEach module 'modalMock'
  beforeEach module 'userMock'

  beforeEach inject ($controller,$rootScope,$state,pageInfo,modalLoading,user) ->
    scope = $rootScope.$new()
    mockPageConfig = pageInfo
    mockModalLoading = modalLoading
    mockUser = user
    mockState = $state
    data = {
      name : 'mart'
    }
    
    SignInCtrl = $controller 'SignInCtrl', 
      $scope: scope,
      $state: mockState,
      pageConfig: mockPageConfig
      modalLoading: mockModalLoading
      user: mockUser
    return

  it 'should get user correctly', ()->
    scope.getUser(data)
    return
    
  return