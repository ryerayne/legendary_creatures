class Creature < ApplicationRecord
    belongs_to :universe
    has_many :traveler_creatures
    has_many :travelers, through: :traveler_creatures
    has_one :wisdom

    validates :name, presence: true

    def collect_wisdom(traveler)
        traveler.creatures << self 
    end

    def has_wisdom?(traveler) 
        if traveler.creatures.include?(self) 
            "You have collected this wisdom" 
        else
        end
    end
end
