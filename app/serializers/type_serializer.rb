class TypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :moves
  has_many :pokemon_types
end
