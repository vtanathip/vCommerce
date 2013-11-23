'use strict';

describe 'Services: Page Info', () ->
  
  httpBackendMock = pageInfoMock = pageInfoResponse = null

  beforeEach module 'vCommerceApp'

  beforeEach inject ($httpBackend, $injector) ->
    pageInfoMock = $injector.get('pageInfo')
    httpBackendMock = $httpBackend

    pageInfoResponse = {
       "shoppingcart" : "Your Shopping Cart"
    }

    return

  afterEach () ->
    httpBackendMock.verifyNoOutstandingExpectation()
    httpBackendMock.verifyNoOutstandingRequest()
    return
  
  it 'should not null' , () ->
    expect(pageInfoMock).not.toBe null
    return

  it 'should type object' , () ->
    expect(typeof pageInfoMock).toBe 'object'
    return
  
  it 'should call through getAllProducts service' , () ->

    httpBackendMock.when('GET', 'configuration/pages/en/main.json').respond(200,pageInfoResponse)
    
    pageInfoMock.getPageInfo('main').then (response) ->
      expect(response.shoppingcart).toBe('Your Shopping Carts')
      return

    httpBackendMock.flush()

    return

  return