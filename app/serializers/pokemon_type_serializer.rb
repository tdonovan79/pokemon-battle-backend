class PokemonTypeSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :pokemon
  belongs_to :type
end
