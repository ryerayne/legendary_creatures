# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (Universe has_many creatures)
- [x] Include at least one belongs_to relationship (Creatures belong_to a Universe)
- [x] Include at least two has_many through relationships (Travelers have_many wisdoms through creatures; Universes have_many Travelers through traveler_universes)
- [x] Include at least one many-to-many relationship (Creatures have_many travelers and Travelers have_many creatures)
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (Travelers have_many wisdoms through creatures: creatures have names and descriptions)
- [x] Include reasonable validations for simple model objects (Universe and Creature validate presence of name, Wisdom validates presence of Words, Traveler validates uniqueness of username, that password and password confirmation match, and that password matches username). 
- [x] Include a class level ActiveRecord scope method (Universe.most_creatures URL: /universes/most_creatures)
- [x] Include signup 
- [x] Include login 
- [x] Include logout
- [x] Include third party signup/login (OmniAuth Facebook)
- [x] Include nested resource show or index (URL universes/1/creatures)
- [x] Include nested resource "new" form (URL universes/2/creatures/new)
- [x] Include form display of validation errors (New and Edit Universe and New and Edit Creature show errors on form if name is blank)

Confirm:
- [X] The application is pretty DRY
- [X] Limited logic in controllers
- [X] Views use helper methods if appropriate
- [X] Views use partials if appropriate (Universe and Travelers use form partials)