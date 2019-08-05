function Universe(id, name, description) {
    this.id = id; 
    this.name = name;
    this.description = description;
}

Universe.prototype.createDescription = function() {
    let description = "<p>" + this.description + "</p>"; 
    return description; 
};

Universe.prototype.createLink = function() {
    let link = "<a href='/universes/" + this.id + "'>Visit Universe</a>"; 
    return link; 
};

$(document).on('turbolinks:load', function() {
    $(".js-more").on('click', function(event) {
        const id = $(this).data("id");
        $.get("/universes/" + id + ".json", function(data) {
            const universeData = data; 
            let newUniverse = new Universe(id, universeData["name"], universeData["description"]); 
            let description = newUniverse.createDescription(); 
            let link = newUniverse.createLink(); 
            $("#universe-" + id).html(description + link);
        });
    });

    $("form").on('submit', function(event) {
        event.preventDefault();
        let values = $(this).serialize();
 
        let posting = $.post('/universes', values);

        posting.done(function(data) {
            let newUniverse = new Universe(data.id, data.name, data.description)
            let universeDescription = data.description; 
            let newUniverse = "<h3>" + newUniverse.name + "</h3>"
            $("#new-universe").html(newUniverse); 
          });
    });

});