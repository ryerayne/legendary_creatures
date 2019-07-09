class Traveler < ApplicationRecord
    has_secure_password
    has_many :traveler_universes
    has_many :traveler_creatures
    has_many :universes, through: :traveler_universes
    has_many :creatures, through: :traveler_creatures
    has_many :wisdoms, through: :creatures
end