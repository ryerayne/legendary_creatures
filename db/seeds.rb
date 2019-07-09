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
