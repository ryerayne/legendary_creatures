$(document).on('turbolinks:load', function() {
    $(".meet-creatures").on('click', function(event) {
        const id = $(this).data("id");
        $.get("/universes/" + id + ".json", function(data) {
            const universeData = data; 
            const creatures = universeData.creatures; 
            let creaturesList = "<h3>Creatures<h3>";
            creatures.forEach(function(creature) {
              creaturesList += '<h4>' + creature.name + '</h4><p>' + creature.description + '</p>'
              creaturesList += "<a href='/universes/" + id + "/creatures/" + creature.id + "'>Meet Creature</a><br>"
            });

            $("#creatures-list").html(creaturesList);
        });
    });
});