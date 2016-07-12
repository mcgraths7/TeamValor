class Pokemon < ActiveRecord::Base
  has_many :trainer_specific_pokemon
  has_many :pokedexes, through: :trainer_specific_pokemon
end