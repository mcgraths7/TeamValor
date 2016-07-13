class Pokemon < ActiveRecord::Base

  has_many :user_pokemon
  has_many :users, through: :user_pokemon

end



