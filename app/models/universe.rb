class Universe < ApplicationRecord
    has_many :creatures
    has_many :traveler_universes
    has_many :travelers, through: :traveler_universes
    
    validates :name, presence: true

    def self.most_creatures
        self.order(creatures: :desc).first
    end
end
