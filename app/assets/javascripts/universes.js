$(document).on('turbolinks:load', function() {
    $(".js-more").on('click', function(event) {
        const id = $(this).data("id");
        $.get("/universes/" + id + ".json", function(data) {
            const universe = data; 
            const description = "<p>" + universe["description"] + "</p>" 
            $("#universe-" + id).html(description);
        });
    });
});