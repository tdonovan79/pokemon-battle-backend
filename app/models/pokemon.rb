class Pokemon < ApplicationRecord
  has_many :pokemon_types, :dependent => :destroy
  belongs_to :user
  has_many :types, through: :pokemon_types

  def types_and_moves
    types_and_moves  = {type: [], moves: []}
    self.types.each do |type|
      types_and_moves[:type] << type.name
      types_and_moves[:moves] << type.moves
    end
    types_and_moves
  end
end
