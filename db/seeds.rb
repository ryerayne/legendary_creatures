# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

toxic_jungle_universe = Universe.create(name: "Nausicaa's Toxic Jungle", description: "A poisonous forest swarming with giant mutant insects")

ohm = Creature.create(name: "Ohm", description: "Enormous creature, combination of an insect and an arthropod, existing in a perpetual larval form until its life ends.")
ohm.universe = toxic_jungle_universe
ohm.save 

world_wisdom = Wisdom.new(words: "Go back to your jungle. This is not your world.")
world_wisdom.creature = ohm
world_wisdom.save

fox = Creature.create(name: "Fox-Squirrel", description: "A small, catlike animals [1], generally found feral and considered impossible to domesticate.")
fox.universe = toxic_jungle_universe
fox.save 

good_wisdom = Wisdom.new(words: "Why is it that everything that is good for you tastes so bad?")
good_wisdom.creature = fox
good_wisdom.save

harry_potter_universe = Universe.create(name: "Harry Potter Universe", description: "A veiled and separate shadow society wherein magic is commonly used and practised, and those who can use it live in self-enforced seclusion, hiding their abilities from the rest of the world.")

dementor = Creature.create(name: "Dementor", description: "These creatures are the guards of Azkaban. They feed on human happiness and can extract souls with their Dementor's Kiss. They're shaped like humans covered in dark, hooded cloaks and their skin resembles that of a grey, rotting body. Though they are blind, they can sense and feed on positive feelings, draining their victims of happiness.")
dementor.universe = harry_potter_universe
dementor.save 

happy_wisdom = Wisdom.new(words: "Think of something happy and you might save your soul.")
happy_wisdom.creature = dementor
happy_wisdom.save

merperson = Creature.create(name: "Merperson", description: "They are half fish, half human with grey skin, dark green hair with yellow eyes and teeth. These underwater beasts have a rocky relationship with the wizarding world because they have war-like tendencies and can drag people to their deaths underwater.")
merperson.universe = harry_potter_universe
merperson.save 

mer_wisdom = Wisdom.new(words: "Come seek us where our voices sound.")
mer_wisdom.creature = merperson
mer_wisdom.save

westeros_universe = Universe.create(name: "Westeros", description: "A continent located in the far west of the known world.")

seadragon = Creature.create(name: "Sea Dragon", description: "Sea dragons are possibly mythical creatures of the sea. Some maesters question their existence, as they have not been seen in millenia. Believers think they still exist deep in the Sunset Sea.")
seadragon.universe = westeros_universe
seadragon.save 

sea_wisdom = Wisdom.new(words: "Never forget what you are. The rest of the world will not. Wear it like armor, and it can never be used to hurt you.")
sea_wisdom.creature = seadragon
sea_wisdom.save

goblin = Creature.create(name: "Rock Goblin", description: "Legends tell of rock goblins and giants warring. The goblins won but were seduced by swan maidens from the lakes and were made thralls. The Andals then rose up and killed them all.")
goblin.universe = westeros_universe
goblin.save 

goblin_wisdom = Wisdom.new(words: "This wide world is full of such mad tales.")
goblin_wisdom.creature = goblin
goblin_wisdom.save