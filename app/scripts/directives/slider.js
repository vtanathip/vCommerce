'use strict';
angular.module('vCommerceApp').directive('slider', function() {
  var directiveDefinitionObject;
  directiveDefinitionObject = {
    restrict: 'E',
    scope: {
      data: '='
    },
    templateUrl: 'templates/slider.html',
    replace: false,
    transclude: true,
    controller: function($scope) {
      var jcarouselConfig, left_pos, mycarousel_initCallback, width;
      width = 24 * $('.jcarousel-control a').length;
      $('.jcarousel-control').width(width + 24);
      left_pos = ((994 - width) / 2) + 1;
      $('.jcarousel-control').css('left', left_pos);
      mycarousel_initCallback = function(carousel) {
        jQuery('.jcarousel-control a').bind('click', function() {
          $('.jcarousel-control a').removeClass('active');
          $(this).addClass('active');
          carousel.scroll(jQuery.jcarousel.intval(jQuery(this).text()));
          return false;
        });
      };
      jcarouselConfig = {
        scroll: 1,
        auto: 2,
        wrap: 'both',
        initCallback: mycarousel_initCallback,
        buttonNextHTML: null,
        buttonPrevHTML: null,
        itemVisibleInCallback: {
          onAfterAnimation: function(c, o, i, s) {
            $('.jcarousel-control a').removeClass('active');
            $('.jcarousel-control a:eq(' + (i - 1) + ')').addClass('active');
          }
        }
      };
      $("#slider").jcarousel(jcarouselConfig);
    }
  };
  return directiveDefinitionObject;
});
