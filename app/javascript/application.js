// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"


(function($) {
  "use strict";

  /* Navbar Scripts */
  // jQuery to collapse the navbar on scroll
  $(window).on('scroll load', function() {
  if ($(".navbar").offset().top > 60) {
    $(".fixed-top").addClass("top-nav-collapse");
  } else {
    $(".fixed-top").removeClass("top-nav-collapse");
  }
  });

// jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
  $(document).on('click', 'a.page-scroll', function(event) {
    var $anchor = $(this);
    $('html, body').stop().animate({
      scrollTop: $($anchor.attr('href')).offset().top
    }, 600, 'easeInOutExpo');
    event.preventDefault();
  });
  });

  // offcanvas script from Bootstrap + added element to close menu on click in small viewport
  $('[data-toggle="offcanvas"], .navbar-nav li a:not(.dropdown-toggle').on('click', function () {
      $('.offcanvas-collapse').toggleClass('open')
  })

  // hover in desktop mode
  function toggleDropdown (e) {
      const _d = $(e.target).closest('.dropdown'),
          _m = $('.dropdown-menu', _d);
      setTimeout(function(){
          const shouldOpen = e.type !== 'click' && _d.is(':hover');
          _m.toggleClass('show', shouldOpen);
          _d.toggleClass('show', shouldOpen);
          $('[data-toggle="dropdown"]', _d).attr('aria-expanded', shouldOpen);
      }, e.type === 'mouseleave' ? 300 : 0);
  }
  $('body')
  .on('mouseenter mouseleave','.dropdown',toggleDropdown)
  .on('click', '.dropdown-menu a', toggleDropdown);


  /* Rotating Text - Morphtext */
$("#js-rotating").Morphext({
  // The [in] animation type. Refer to Animate.css for a list of available animations.
  animation: "fadeIn",
  // An array of phrases to rotate are created based on this separator. Change it if you wish to separate the phrases differently (e.g. So Simple | Very Doge | Much Wow | Such Cool).
  separator: ",",
  // The delay between the changing of each phrase in milliseconds.
  speed: 2000,
  complete: function () {
    // Called after the entrance animation is executed.
  }
  });


  /* Details Lightbox - Magnific Popup */
  $('.popup-with-move-anim').magnificPopup({
  type: 'inline',
  fixedContentPos: true,
  fixedBgPos: true,
  overflowY: 'auto',
  closeBtnInside: true,
  preloader: false,
  midClick: true,
  removalDelay: 300,
  mainClass: 'my-mfp-slide-bottom'
  });


/* Card Slider - Swiper */
var cardSlider = new Swiper('.card-slider', {
  autoplay: {
          delay: 4000,
          disableOnInteraction: false
  },
      loop: true,
      navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev'
  },
  slidesPerView: 3,
  spaceBetween: 70,
      breakpoints: {
          // when window is <= 767px
          767: {
              slidesPerView: 1
          },
          // when window is <= 991px
          991: {
              slidesPerView: 2,
              spaceBetween: 40
          }
      }
  });


  /* Filter - Isotope */
  var $grid = $('.grid').isotope({
      // options
      itemSelector: '.element-item',
      layoutMode: 'fitRows'
  });

  // filter items on button click
  $('.filters-button-group').on( 'click', 'a', function() {
      var filterValue = $(this).attr('data-filter');
      $grid.isotope({ filter: filterValue });
  });

  // change is-checked class on buttons
  $('.button-group').each( function( i, buttonGroup ) {
      var $buttonGroup = $( buttonGroup );
      $buttonGroup.on( 'click', 'a', function() {
          $buttonGroup.find('.is-checked').removeClass('is-checked');
          $( this ).addClass('is-checked');
      });
  });


  /* Counter - CountTo */
var a = 0;
$(window).scroll(function() {
  if ($('#counter').length) { // checking if CountTo section exists in the page, if not it will not run the script and avoid errors
    var oTop = $('#counter').offset().top - window.innerHeight;
    if (a == 0 && $(window).scrollTop() > oTop) {
    $('.counter-value').each(function() {
      var $this = $(this),
      countTo = $this.attr('data-count');
      $({
      countNum: $this.text()
      }).animate({
        countNum: countTo
      },
      {
        duration: 2000,
        easing: 'swing',
        step: function() {
            $this.text(Math.floor(this.countNum));
        },
        complete: function() {
            $this.text(this.countNum);
            //alert('finished');
        }
      });
    });
    a = 1;
    }
  }
  });


  /* Move Form Fields Label When User Types */
  // for input and textarea fields
  $("input, textarea").keyup(function(){
  if ($(this).val() != '') {
    $(this).addClass('notEmpty');
  } else {
    $(this).removeClass('notEmpty');
  }
});


  /* Back To Top Button */
  // create the back to top button
  $('body').prepend('<a href="body" class="back-to-top page-scroll">Back to Top</a>');
  var amountScrolled = 700;
  $(window).scroll(function() {
      if ($(window).scrollTop() > amountScrolled) {
          $('a.back-to-top').fadeIn('500');
      } else {
          $('a.back-to-top').fadeOut('500');
      }
  });


/* Removes Long Focus On Buttons */
$(".button, a, button").mouseup(function() {
  $(this).blur();
});

})(jQuery);
