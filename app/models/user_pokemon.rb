class UserPokemon < ApplicationRecord
  attr_accessor :skip_password_validation
  belongs_to :user
  belongs_to :pokemon
  has_many :battles, foreign_key: 'friend_id'
  has_many :battles, foreign_key: 'foe_id'
  has_many :trade_requests, foreign_key: 'give_id'
  has_many :trade_requests, foreign_key: 'take_id'
  validates_presence_of :user, :pokemon
end
