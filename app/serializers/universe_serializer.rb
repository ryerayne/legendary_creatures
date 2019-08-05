class UniverseSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :creatures
end
