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
end
