'use strict';

describe 'Controller: MainCtrl', () ->
  
  scope = null
  mockPageConfig = null
  mockState = null
  featureProductMock = null

  beforeEach module 'vCommerceApp'
  beforeEach module 'pageInfoMock'
  beforeEach module 'stateMock'

  beforeEach inject ($controller,$rootScope,$state,pageInfo) ->
    scope = $rootScope.$new()
    mockPageConfig = pageInfo
    mockState = $state
    
    featureProductMock = {
      name: "XR-34", 
      code: "1215", 
      price: 100, 
      feature: true,
      images: "../images/paperclip.jpg",
      imagestitle: "paperclip"
    }

    MainCtrl = $controller 'MainCtrl', 
      $scope: scope,
      $state: mockState,
      pageConfig: mockPageConfig,
      featureProduct: featureProductMock
    return

  it 'should change state to signup', ()->
    scope.navigateToMenu 'signup'
    expect(mockState.targetState).toBe('signup')
    return
    
  return