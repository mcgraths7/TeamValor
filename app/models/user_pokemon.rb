class UserPokemon < ApplicationRecord
  attr_accessor :skip_password_validation
  belongs_to :user
  belongs_to :pokemon
  has_many :evolvers
  has_many :battles, foreign_key: 'friend_id'
  has_many :battles, foreign_key: 'foe_id'
  has_many :rank_adjusters, foreign_key: 'friend_id'
  has_many :rank_adjusters, foreign_key: 'foe_id'
  has_many :trade_requests, foreign_key: 'sender_id'
  has_many :trade_requests, foreign_key: 'recipient_id'

end
