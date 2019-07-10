class Creature < ApplicationRecord
    belongs_to :universe
    has_many :traveler_creatures
    has_many :travelers, through: :traveler_creatures
    has_one :wisdom

    validates :name, presence: true
end
