class CreatureSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :travelers
end
