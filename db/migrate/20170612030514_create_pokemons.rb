class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :nome
      t.integer :cp
      t.integer :hp
      t.references :treinador, index: true

      t.timestamps
    end
  end
end
