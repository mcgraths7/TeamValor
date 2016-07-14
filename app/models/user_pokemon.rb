class UserPokemon < ActiveRecord::Base
  belongs_to :user
  belongs_to :pokemon
  has_many :battles, foreign_key: 'friend_id'
  has_many :battles, foreign_key: 'foe_id'

  def evolve
    required_level? ? self.pokemon = Pokemon.find(self.pokemon.next_id) : "Cannot evolve"
    self.save
  end

  def required_level?
    self.pokemon.next_id && self.level >= Pokemon.find(self.pokemon.next_id).starting_level
  end

  def battle(foe)
    battle = Battle.create(friend: self, foe: foe)
    byebug
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

end
