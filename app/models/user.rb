class User < ActiveRecord::Base
  belongs_to :gym
  has_one :pokedex
  has_many :trainer_specific_pokemon, through: :pokedex
  # has_secure_password
end