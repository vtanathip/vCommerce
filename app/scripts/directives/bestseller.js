'use strict';
angular.module('vCommerceApp').directive('bestSeller', function() {
  var directiveDefinitionObject;
  directiveDefinitionObject = {
    restrict: 'E',
    scope: {
      data: '='
    },
    templateUrl: 'templates/bestseller.html',
    replace: false,
    controller: function($scope) {
      var scrollconfig;
      scrollconfig = {
        showArrows: true,
        horizontalDragMinWidth: 28,
        horizontalDragMaxWidth: 28
      };
      $('.scroll-pane').jScrollPane(scrollconfig);
    }
  };
  return directiveDefinitionObject;
});
