class UserPokemon < ApplicationRecord
  attr_accessor :skip_password_validation
  belongs_to :user
  belongs_to :pokemon
  has_many :battles, foreign_key: 'friend_id'
  has_many :battles, foreign_key: 'foe_id'
  has_many :trade_requests, foreign_key: 'give_id'
  has_many :trade_requests, foreign_key: 'take_id'
<<<<<<< HEAD
=======
  validates_presence_of :user, :pokemon

>>>>>>> 17fb55d219982dc8305ab4d407f092dfc8e25598
end
