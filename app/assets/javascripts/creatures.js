$(document).on('turbolinks:load', function() {
    $("selector").on('click', function(event) {
        const id = $(this).data("id");
        console.log(id); 
    });
});