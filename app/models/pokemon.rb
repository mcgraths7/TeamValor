class Pokemon < ApplicationRecord

  has_many :user_pokemon
  has_many :users, through: :user_pokemon
  belongs_to :element

end



