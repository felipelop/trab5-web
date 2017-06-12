class Pokemon < ActiveRecord::Base
  belongs_to :treinador
  has_and_belongs_to_many :tipos, :dependent => :destroy
  has_one :pokedex, :dependent => :destroy
end
