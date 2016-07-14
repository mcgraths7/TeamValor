class Pokemon < ApplicationRecord

  has_many :user_pokemon
  has_many :users, through: :user_pokemon

end



