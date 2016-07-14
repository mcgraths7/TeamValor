class UserPokemon < ActiveRecord::Base
  belongs_to :user
  belongs_to :pokemon

  def evolve
    required_level? ? self.pokemon = Pokemon.find(self.pokemon.next_id) : "Cannot evolve"
    self.save
  end

  def required_level?
    self.pokemon.next_id && self.level >= Pokemon.find(self.pokemon.next_id).starting_level
  end

  def battle(foe)
    multiplier = self.pokemon.advantage(foe.pokemon)
    friend_power = self.pokemon.battle_power*multiplier + self.level + rand(1..4)
    foe_power = foe.pokemon.battle_power + foe.level + rand(1..4)
    result(friend_power, foe_power)
  end

  def result(friend_power, foe_power)
    if friend_power >= foe_power
      self.level += 1
      self.user.rank += 1
    else
      self.user.rank -= 1
    end
    self.user.save
    self.save
  end

end
