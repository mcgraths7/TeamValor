class Element < ApplicationRecord
  has_many :pokemon, inverse_of: :element
  has_many :strengths
  has_many :weaknesses

  ELEMENT_STRENGTHS = [

  fire_strength = ['grass', 'ice', 'bug'],

  water_strength = ['fire', 'ground', 'rock'],

  electric_strength = ['water', 'flying'],

  grass_strength = ['water', 'ground', 'rock'],

  ice_strength = ['grass', 'ground', 'flying', 'dragon'],

  fighting_strength = ['normal', 'ice', 'ground', 'flying'],

  poison_strength = ['grass', 'bug'],

  ground_strength = ['fire', 'electric', 'poison', 'rock'],

  flying_strength = ['grass', 'fighting', 'bug'],

  psychic_strength = ['fighting', 'poison'],

  bug_strength = ['grass', 'poison', 'bug'],

  rock_strength = ['fire', 'ice', 'flying', 'rock'],

  ghost_strength = ['ghost'],

  dragon_strength = ['dragon'],

  normal_strength = []

  ] 
  def self.element_strengths
    ELEMENT_STRENGTHS.each_with_index do |ele, index|
        ele.each do |e|
          Element.all[index].strengths << Strength.find_by(name: e)
          Element.all[index].save
          sleep(1)


      end
    end
  end

  
end
