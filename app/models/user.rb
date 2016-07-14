class User < ApplicationRecord
  belongs_to :gym, optional: true
  has_one :trainer
  has_one :leader
  has_many :user_pokemons
  # has_secure_password
end
