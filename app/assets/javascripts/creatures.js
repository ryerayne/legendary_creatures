$(document).on('turbolinks:load', function() {
    $('selector').on('click', function(event) {
        console.log(event); 
    });
});