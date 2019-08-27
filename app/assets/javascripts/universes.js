function Universe(id, name, description) {
    this.id = id; 
    this.name = name;
    this.description = description;
}

Universe.prototype.createDisplayHtml = function() {
    let description = "<p>" + this.description + "</p>"; 
    let link = "<a href='/universes/" + this.id + "'>Visit Universe</a>"; 
    return description + link; 
};

$(document).on('turbolinks:load', function() {
    $(".js-more").on('click', function(event) {
        const id = $(this).data("id");
        $.get("/universes/" + id + ".json", function(data) {
            const universeData = data; 
            let newUniverse = new Universe(id, universeData["name"], universeData["description"]); 
            let displayHtml = newUniverse.createDisplayHtml(); 
            $("#universe-" + id).html(displayHtml);
        });
    });

// optional functionality to submit new Universe form and load live on the page: 
//
//     $("form").on('submit', function(event) {
//         event.preventDefault();
//         let values = $(this).serialize();
 
//         let posting = $.post('/universes', values);

//         posting.done(function(data) {
//             let newUniverse = new Universe(data.id, data.name, data.description)
//             let newUniverseName = "<h3>" + newUniverse.name + "</h3>"
//             let displayHtml = newUniverse.createDisplayHtml(); 
            
//             $("#new-universe").html(newUniverseName + displayHtml); 
//           });
//     });

// also add the following code to the bottom of app/views/universes/index.html.erb: 
{/* <div id="new-universe">
<h3>Create a Universe</h3>

<%= render 'form' %>
</div> */}

});