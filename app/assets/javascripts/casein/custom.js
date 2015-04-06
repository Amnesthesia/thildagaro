// CASEIN CUSTOM
// Use this file for your project-specific Casein JavaScript
//= require owl.carousel
//= require bootstrap-wysihtml5
//= require bootstrap-wysihtml5/locales/sv-SE

$(document).ready(function(){
    $("textarea").each(function(i, elem){
        $(elem).wysihtml5({locale: "sv-SE"});
    });
});

$(document).on('page:load', function(){
    window['rangy'].initialized = false;
});
