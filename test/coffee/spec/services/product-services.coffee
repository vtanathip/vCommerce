'use strict';

describe 'Services: Product', () ->
  
  httpBackendMock = productMock = null

  beforeEach module 'vCommerceApp'

  beforeEach inject ($httpBackend, $injector) ->
    productMock = $injector.get('product')
    httpBackendMock = $httpBackend
    return

  afterEach () ->
    httpBackendMock.verifyNoOutstandingExpectation()
    httpBackendMock.verifyNoOutstandingRequest()
    return
  
  it 'should not null' , () ->
    expect(productMock).not.toBe null
    return

  it 'should type object' , () ->
    expect(typeof productMock).toBe 'object'
    return
  
  it 'should call through getAllProducts service' , () ->

    httpBackendMock.when('GET', 'http://localhost:5000/products').respond(200,'')
    
    spyOn(productMock,'getAllProducts').andCallThrough()
    
    productMock.getAllProducts()
    
    httpBackendMock.flush()

    return

  it 'should call through getFeatureProduct service' , () ->

    httpBackendMock.when('GET', 'http://localhost:5000/getFeatureProduct').respond(200,'')
    
    spyOn(productMock,'getFeatureProduct').andCallThrough()
    
    productMock.getFeatureProduct()
    
    httpBackendMock.flush()

    return  

  it 'should call through getBestSellerProduct service' , () ->

    httpBackendMock.when('GET', 'http://localhost:5000/getBestSellerProduct').respond(200,'')
    
    spyOn(productMock,'getBestSellerProduct').andCallThrough()
    
    productMock.getBestSellerProduct()
    
    httpBackendMock.flush()

    return

  return