class CreateTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :types do |t|
      t.string :name
      t.string :moves
      t.references :pokemon_type, null: true, foreign_key: true

      t.timestamps
    end
  end
end
