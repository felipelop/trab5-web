class Treinador < ActiveRecord::Base
	has_many :pokemons, :dependent => :destroy
end
