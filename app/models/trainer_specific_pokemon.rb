class TrainerSpecificPokemon < ActiveRecord::Base
  belongs_to :pokedex
  belongs_to :pokemon
end