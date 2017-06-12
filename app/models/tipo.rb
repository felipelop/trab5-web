class Tipo < ActiveRecord::Base
  has_and_belongs_to_many :pokemons, :dependent => :destroy
end
