// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require fancybox
//= require owl.carousel
//= require jquery.hcaptions
//= require_tree .

$(document).ready(function() {

    if($("#carousel").length)
    {
        $("#carousel").owlCarousel({

            navigation : true, // Show next and prev buttons
            slideSpeed : 300,
            paginationSpeed : 400,
            singleItem:true,

            // "singleItem:true" is a shortcut for:
            // items : 1,
            // itemsDesktop : false,
            // itemsDesktopSmall : false,
            // itemsTablet: false,
            // itemsMobile : false

        });

        var owl = $('.owl-carousel');

        owl.owlCarousel({
            autoplay:true,
            autoplayTimeout:5000,
            autoplayHoverPause:true,
            loop: true
        });

        owl.trigger('owl.play',5000);

        if($("#carousel-control-injection-area").length)
        {
            $(".owl-controls.clickable > .owl-buttons").remove();
        }
    }

    if($(".fancy-image").length)
    {
        $(".fancy-image").fancybox({
            'transitionIn'	:	'elastic',
            'transitionOut'	:	'elastic',
            'speedIn'		:	600,
            'speedOut'		:	200,
            'overlayShow'	:	true
        });
    }

    $(".caption").hcaptions({
        effect: "fade"
    });

});
