# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (Universe has_many creatures)
- [x] Include at least one belongs_to relationship (Creatures belong_to a Universe)
- [x] Include at least two has_many through relationships (Travelers have_many wisdoms through creatures; Universes have_many Travelers through traveler_universes)
- [x] Include at least one many-to-many relationship (Creatures have_many travelers and Travelers have_many creatures)
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (Travelers have_many wisdoms through creatures: creatures have names and descriptions)
- [ ] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include signup 
- [x] Include login 
- [x] Include logout
- [ ] Include third party signup/login (how e.g. Devise/OmniAuth)
- [x] Include nested resource show or index (URL universes/1/creatures)
- [x] Include nested resource "new" form (URL universes/2/creatures/new)
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate