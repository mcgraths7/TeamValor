class User < ActiveRecord::Base
  belongs_to :gym
  has_one :trainer
  has_one :leader
  has_many :user_pokemons
  # has_secure_password
end
