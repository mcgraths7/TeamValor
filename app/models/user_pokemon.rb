class UserPokemon < ApplicationRecord
  belongs_to :user
  belongs_to :pokemon
  has_many :battles, foreign_key: 'friend_id'
  has_many :battles, foreign_key: 'foe_id'

  def evolve
    if required_level?
      self.pokemon = Pokemon.find(self.pokemon.next_id)
      self.save
    else
      return nil
    end
  end

  def required_level?
    self.pokemon.next_id && self.level >= Pokemon.find(self.pokemon.next_id).starting_level
  end

  def battle(foe)
    battle = Battle.create(friend: self, foe: foe)
    battle.result == 'won' ? level_up : level_down(foe)
    self.save
    self.user.save
  end

  def level_up
    self.level += 1
    self.user.rank += 1
  end

  def level_down(foe)
    foe.level += 1
    foe.user.rank += 1
    self.user.rank -= 1
  end

  def switch_user(other_pokemon)
    user_1 = self.user
    user_2 = other_pokemon.user
    self.user = user_2
    other_pokemon.user = user_1
  end

end
