class Universe < ApplicationRecord
    has_many :creatures
    has_many :traveler_universes
    has_many :travelers, through: :traveler_universes
    
    validates :name, presence: true

    def self.most_creatures
        Universe.joins(:creatures).group("creatures.universe_id").order("count(creatures.universe_id) desc").limit(1)    
    end
end
