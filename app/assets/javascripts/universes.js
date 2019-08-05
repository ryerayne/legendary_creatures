$(document).on('turbolinks:load', function() {
    $(".js-more").on('click', function(event) {
        const id = $(this).data("id");
        $.get("/universes/" + id + ".json", function(data) {
            const universe = data; 
            const description = "<p>" + universe["description"] + "</p>" 
            const universeLink = "<a href='/universes/" + id + "'>Visit Universe</a>"
            $("#universe-" + id).html(description + universeLink);
        });
    });

    $("form").on('submit', function(event) {
        event.preventDefault();
        let values = $(this).serialize();
 
        let posting = $.post('/universes', values);

        posting.done(function(data) {
            let universeName = data.name; 
            let universeDescription = data.description; 
            let newUniverse = "<h3>" + universeName + "</h3><p>" + universeDescription + "</p>"; 

            $("#new-universe").html(newUniverse); 
          });
    });

});