class Pokedex < ActiveRecord::Base
  has_many :trainer_specific_pokemon
  has_many :pokemon, through: :trainer_specific_pokemon
  belongs_to :user
  
end