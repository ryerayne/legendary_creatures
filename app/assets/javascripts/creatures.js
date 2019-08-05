$(document).on('turbolinks:load', function() {
    $(".js-more").on('click', function(event) {
        const id = $(this).data("id");
        console.log(id); 
    });
});