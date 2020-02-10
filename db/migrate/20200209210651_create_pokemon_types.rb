class CreatePokemonTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemon_types do |t|
      t.references :pokemon, null: false, foreign_key: true
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
# RAILS G RESOURCE FOR JOINER? NOT RAILS G MODEL? https://learn.co/tracks/web-development-immersive-3-1-module-three/front-end-web-programming/rails-as-an-api/rendering-related-object-data-in-json
