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
//= require jquery.lazylinepainter-1.5.1.min
//= require_tree .

var thilda = {
    "logo": {
        "strokepath": [
            {
                "path": "  M478,21.5c4-0.8,3.5-7.5-0.2-9.4s-8-0.4-11.8,1.3c-18.4,8.2-34.7,20.9-47,36.7c-6.7,8.6-12.5,19.2-10.1,29.8  c3.1,13.6,18.1,20.8,31.8,23.7c17.8,3.8,36.5,3.7,54.2-0.2c9.8-2.2,20.9-7.2,22.5-17.1c1.4-8.6-5.6-16.6-13.4-20.3  c-7.9-3.7-16.8-4.5-25.1-7.2c13.8,0,27.6-0.2,41.4-0.5",
                "duration": 600
            },
            {
                "path": "  M537,61.4c0-3.6,4.1-6.1,7.6-5.8c3.6,0.3,6.7,2.6,9.4,4.9c10.9,9.5,19.4,21.8,24.4,35.5c-6.5-7.4-15.8-12.3-25.6-13.4  c-6.6-0.7-15.5,2.6-14.8,9.2c0.6,5.2,6.9,7.7,12.1,7.8c16.7,0.3,35.3-13.8,36.7-30.4c3.9,9.9,7.8,19.8,11.6,29.7  c-2.2-10.4-3.7-22.9,4.1-30c7.8-7.2,20-3,29.4,1.9c7.8,4.1,16.2,11.8,24.1,20.9c4-4.8,1.2-13.2-4.7-15.1c-5.9-1.8-12.8,3.2-13.2,9.4  c-0.4,6.2,5.3,12,11.5,12c6.2,0,11.7-5.1,13.5-11s0.6-12.5-1.9-18.2c-5.5-12.6-17.3-22.3-30.7-25.2c13.2,1.5,26.6,1.4,39.8-0.2",
                "duration": 1000
            },
            {
                "path": "  M136.5,25.8c-0.5,15.3,0.2,30.6,2.1,45.8c1.1,8.4,2.8,17.5,9,23.4c1.6,1.5,3.5,2.8,5.7,2.9c3.9,0.1,6.7-3.4,8.9-6.6  c5.5-8,11-16,16.5-24c4.5,3.6,6.9,9.3,9.7,14.4c2.8,5.1,6.7,10.3,12.4,11.4c9,1.8,16.3-6.8,21.3-14.4c2.5,2.9,3.9,6.6,5.8,9.9  c2,3.3,4.9,6.5,8.7,7s8.1-2.8,7.3-6.5",
                "duration": 600
            },
            {
                "path": "  M215.5,53.7c0.3-0.1,0.5-0.3,0.8-0.4",
                "duration": 600
            },
            {
                "path": "  M246.2,36.6c-1.7,18.5,2.4,37.5,14.2,51.6c12.3,14.7,30.2,11.6,45.5,0.1c2.2-1.7,4.4-3.7,5.1-6.4c1.2-4.5-2-8.9-5.2-12.3  c-4.4-4.6-10.2-9.3-16.5-7.9c-4.8,1.1-8.2,5.6-8.9,10.5c-0.7,4.8,0.9,9.8,3.5,13.9c5.1,8.3,16.5,14.2,24.6,8.7  c5.4-3.7,7.1-11,7.3-17.6c0.5-15.3-4.1-30.7-13-43.2c7.8,20.8,18.4,40.5,31.5,58.5c5.5-9.4,7.2-22.5,17.5-27.1  c6.2-2.7,13.7-0.8,19.2,3.3c5.4,4.1,9.2,10,12.6,15.9c-5.1-7.4-16.2-9.8-23.9-5.3c-3.1,1.8-5.8,5.1-5.1,8.6c0.6,3.4,4.1,5.5,7.4,6.6  c7.1,2.5,15,2.5,22.2,0.1",
                "duration": 1000
            },
            {
                "path": "  M107.2,5c-1.9,0.7-1.9,3.3-1.6,5.2c4.5,30.4,8.9,60.9,13.4,91.3C90.3,84,35.5,62,15.7,50.7C9.4,47.1,3.5,43.6,5.3,36.1  c0.9-3.6,4.4-5.9,7.7-7.6c13.9-7.3,29.5-11.1,45-13.7c46.7-8,99.2-9.3,141.1,3.7c12.5,3.9,8.9,11,2,9.9",
                "duration": 600
            }
        ],
        "dimensions": {
            "width": 676,
            "height": 112
        }
    }
};



$(document).ready(function() {
    $('#logo').lazylinepainter(
    {
       "svgData": thilda,
       "strokeWidth": 8,
       "responsive": true,
       "strokeColor": "#333"
   }).lazylinepainter('paint');

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
