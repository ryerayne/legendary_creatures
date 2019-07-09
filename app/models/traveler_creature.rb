class TravelerCreature < ApplicationRecord
    belongs_to :traveler 
    belongs_to :creature
end
