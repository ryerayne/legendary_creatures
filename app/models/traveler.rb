class Traveler < ApplicationRecord
    has_secure_password
    has_many :traveler_universes
    has_many :traveler_creatures
    has_many :universes, through: :traveler_universes
    has_many :creatures, through: :traveler_creatures
    has_many :wisdoms, through: :creatures

    validates :username, uniqueness: true
    validates :username, presence: true

    def collect_wisdom(creature)
        self.creatures << creature 
    end

    def has_wisdom?(creature) 
        self.creatures.include?(creature) 
    end
end