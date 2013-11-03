'use strict';

describe 'Services: Product', () ->
  
  httpBackendMock = userMock = null

  beforeEach module 'vCommerceApp'

  beforeEach inject ($httpBackend, $injector) ->
    userMock = $injector.get('user')
    httpBackendMock = $httpBackend
    return

  afterEach () ->
    httpBackendMock.verifyNoOutstandingExpectation()
    httpBackendMock.verifyNoOutstandingRequest()
    return
  
  it 'should not null' , () ->
    expect(userMock).not.toBe null
    return

  it 'should type object' , () ->
    expect(typeof userMock).toBe 'object'
    return
  
  it 'should call through getAllProducts service' , () ->

    httpBackendMock.when('POST', 'http://localhost:5000/find/user').respond(200,'')
    
    spyOn(userMock,'getUser').andCallThrough()
    
    userMock.getUser()
    
    httpBackendMock.flush()

    return

  it 'should call through getFeatureProduct service' , () ->

    httpBackendMock.when('POST', 'http://localhost:5000/save/user').respond(200,'')
    
    spyOn(userMock,'saveUser').andCallThrough()
    
    userMock.saveUser()
    
    httpBackendMock.flush()

    return  

  return