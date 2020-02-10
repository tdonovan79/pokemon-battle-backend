class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :health, :default => 100
      t.string :type
      t.string :front_default
      t.string :back_default
      t.references :pokemon_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
