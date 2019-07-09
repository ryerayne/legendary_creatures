class Universe < ApplicationRecord
    has_many :creatures
    has_many :traveler_universes
    has_many :travelers, through: :traveler_universes
end
