'use strict';

describe("End to End Testing Basic Route", function() {

    beforeEach(function() {
        browser().navigateTo('/');
    });

    it('should navigate to somewhere ', function() {
        expect(browser().location().url()).toBe("/");
    });

});