class Wisdom < ApplicationRecord
    belongs_to :creature

    validates :words, presence: true
end
