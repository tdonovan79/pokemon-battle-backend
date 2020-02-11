class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name, :health, :front_default, :back_default, :types
  has_many :pokemon_types
  belongs_to :user
end


# t.string "name"
# t.integer "health", default: 100
# t.string "front_default"
# t.string "back_default"