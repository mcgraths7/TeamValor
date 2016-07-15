# Most of the methods right here, do something, whereas methods in the model should be about being something
# and in the controller and ultimately a service object we want methods about doing something.  

class UserPokemon < ApplicationRecord
  attr_accessor :skip_password_validation
  belongs_to :user
  belongs_to :pokemon
  has_many :evolvers
  has_many :battles, foreign_key: 'friend_id'
  has_many :battles, foreign_key: 'foe_id'
  has_many :level_adjusters, foreign_key: 'friend_id'
  has_many :level_adjusters, foreign_key: 'foe_id'
  has_many :trade_requests, foreign_key: 'give_id'
  has_many :trade_requests, foreign_key: 'take_id'

end
