$(document).on('turbolinks:load', function() {
    $(".js-more").on('click', function(event) {
        console.log(event); 
    });
});