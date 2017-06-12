class Pokedex < ActiveRecord::Base
  belongs_to :pokemon
  validates_uniqueness_of :pokemon_id
end
