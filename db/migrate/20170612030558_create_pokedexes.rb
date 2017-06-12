class CreatePokedexes < ActiveRecord::Migration
  def change
    create_table :pokedexes do |t|
      t.integer :numero
      t.references :pokemon, index: true

      t.timestamps
    end
  end
end
