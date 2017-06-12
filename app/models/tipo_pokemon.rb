class TipoPokemon < ActiveRecord::Base
  self.table_name = "pokemons_tipos"
  belongs_to :tipo
  belongs_to :pokemon
end
