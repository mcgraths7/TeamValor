class UserPokemon < ApplicationRecord
  attr_accessor :skip_password_validation
  belongs_to :user
  belongs_to :pokemon
  has_many :evolvers
  has_many :battles, foreign_key: 'friend_id'
  has_many :battles, foreign_key: 'foe_id'
  has_many :rank_adjusters, foreign_key: 'friend_id'
  has_many :rank_adjusters, foreign_key: 'foe_id'

  def switch_user(other_pokemon)
    user_1 = self.user
    user_2 = other_pokemon.user
    self.user = user_2
    other_pokemon.user = user_1
  end

end
