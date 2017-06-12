class CreateTipoPokemons < ActiveRecord::Migration
  def change
    create_table :tipo_pokemons do |t|
      t.references :tipo, index: true
      t.references :pokemon, index: true

      t.timestamps
    end
  end
end
