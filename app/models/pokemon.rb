class Pokemon < ActiveRecord::Base
  has_many :trainer_specific_pokemon
  has_many :pokedexes, through: :trainer_specific_pokemon

  def evolve
    if self.level > 16 && self.evolution_state == 0 && self.number_of_evolutions == 2      
      self.evolution_state += 1
      self.rarity += 2
      self.name = self.mid
    elsif self.level > 36 && self.evolution_state == 1 && self.number_of_evolutions == 2      
      self.evolution_state += 1
      self.rarity += 2
      self.name = self.top
    elsif self.evolution_state == 2 && self.number_of_evolutions == 2
      "Already highest evolution"
    elsif self.level > 36 && self.evolution_state == 0 && self.number_of_evolutions == 1
      self.evolution_state += 1
      self.rarity += 3
      self.name = self.top
    elsif self.evolution_state == 1 && self.number_of_evolutions == 1
      "Already at highest evolution"
    elsif self.evolution_state == 0 && self.number_of_evolutions == 0
      "Unique pokemon cannot evolve"
    end      
  end

end