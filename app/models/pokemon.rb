class Pokemon < ApplicationRecord
  has_many :pokemon_types
  has_many :users
  has_many :types, through: :pokemon_types
end
