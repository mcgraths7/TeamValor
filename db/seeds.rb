Gym.destroy_all
Trainer.destroy_all
Leader.destroy_all
User.destroy_all
Element.destroy_all
Strength.destroy_all
Weakness.destroy_all
Pokemon.destroy_all
UserPokemon.destroy_all

def elements
  elements = ['fire', 'water', 'electric', 'grass', 'ice', 'fighting', 'poison', 'ground', 'flying', 'psychic', 'bug', 'rock', 'ghost', 'dragon', 'normal']
  elements.each do |element|
    Element.create(name: element)
  end
end
elements
def strengths 

  id = Element.find_by(name: 'fire').id
  fire_strength = ['grass', 'ice', 'bug']
  fire_strength.each do |str|
    Strength.create(name: str, element_id: id)
  end

  id = Element.find_by(name: 'water').id
  water_strength = ['fire', 'ground', 'rock']
  water_strength.each do |str|
    Strength.create(name: str, element_id: id)
  end

  id = Element.find_by(name: 'electric').id
  electric_strength = ['water', 'flying']
  electric_strength.each do |str|
    Strength.create(name: str, element_id: id)
  end

  
  id = Element.find_by(name: 'grass').id
  grass_strength = ['water', 'ground', 'rock']
  grass_strength.each do |str|
    Strength.create(name: str, element_id: id)
  end

  id = Element.find_by(name: 'ice').id
  ice_strength = ['grass', 'flying', 'ground', 'dragon']
  ice_strength.each do |str|
    Strength.create(name: str, element_id: id)
  end

  id = Element.find_by(name: 'fighting').id
  fighting_strength = ['normal', 'ice', 'rock']
  fighting_strength.each do |str|
    Strength.create(name: str, element_id: id)
  end

  id = Element.find_by(name: 'poison').id
  poison_strength = ['grass', 'bug']
  poison_strength.each do |str|
    Strength.create(name: str, element_id: id)
  end

  id = Element.find_by(name: 'ground').id
  ground_strength = ['fire', 'electric', 'poison', 'rock']
  ground_strength.each do |str|
    Strength.create(name: str, element_id: id)
  end


  id = Element.find_by(name: 'flying').id
  flying_strength = ['grass', 'fighting', 'bug']
  flying_strength.each do |str|
    Strength.create(name: str, element_id: id)
  end


  id = Element.find_by(name: 'psychic').id
  psychic_strength = ['fighting', 'poison']
  psychic_strength.each do |str|
    Strength.create(name: str, element_id: id)
  end


  id = Element.find_by(name: 'bug').id
  bug_strength = ['grass', 'poison', 'psychic']
  bug_strength.each do |str|
    Strength.create(name: str, element_id: id)
  end


  id = Element.find_by(name: 'rock').id
  rock_strength = ['fire', 'ice', 'flying', 'bug']
  rock_strength.each do |str|
    Strength.create(name: str, element_id: id)
  end

  id = Element.find_by(name: 'ghost').id
  ghost_strength = ['ghost']
  fighting_strength.each do |str|
    Strength.create(name: str, element_id: id)
  end

  id = Element.find_by(name: 'dragon').id
  dragon_strength = ['dragon']
  dragon_strength.each do |str|
    Strength.create(name: str, element_id: id)
  end

end
def weaknesses 
  id = Element.find_by(name: 'fire').id
  fire_weakness = ['water', 'ground', 'rock']
  fire_weakness.each do |str|
    Weakness.create(name: str, element_id: id)
  end

  id = Element.find_by(name: 'water').id
  water_weakness = ['electric', 'grass']
  water_weakness.each do |str|
    Weakness.create(name: str, element_id: id)
  end

  id = Element.find_by(name: 'electric').id
  electric_weakness = ['ground']
  electric_weakness.each do |str|
    Weakness.create(name: str, element_id: id)
  end

  
  id = Element.find_by(name: 'grass').id
  grass_weakness = ['fire', 'ice', 'poison', 'flying', 'bug']
  grass_weakness.each do |str|
    Weakness.create(name: str, element_id: id)
  end

  id = Element.find_by(name: 'ice').id
  ice_weakness = ['fire', 'fighting', 'rock']
  ice_weakness.each do |str|
    Weakness.create(name: str, element_id: id)
  end

  id = Element.find_by(name: 'fighting').id
  fighting_weakness = ['flying', 'psychic']
  fighting_weakness.each do |str|
    Weakness.create(name: str, element_id: id)
  end

  id = Element.find_by(name: 'poison').id
  poison_weakness = ['ground', 'psychic', 'bug']
  poison_weakness.each do |str|
    Weakness.create(name: str, element_id: id)
  end

  id = Element.find_by(name: 'ground').id
  ground_weakness = ['water', 'grass', 'ice']
  ground_weakness.each do |str|
    Weakness.create(name: str, element_id: id)
  end


  id = Element.find_by(name: 'flying').id
  flying_weakness = ['electric', 'rock', 'ice']
  flying_weakness.each do |str|
    Weakness.create(name: str, element_id: id)
  end


  id = Element.find_by(name: 'psychic').id
  psychic_weakness = ['bug']
  psychic_weakness.each do |str|
    Weakness.create(name: str, element_id: id)
  end


  id = Element.find_by(name: 'bug').id
  bug_weakness = ['fire', 'poison', 'flying', 'rock']
  bug_weakness.each do |str|
    Weakness.create(name: str, element_id: id)
  end


  id = Element.find_by(name: 'rock').id
  rock_weakness = ['water', 'grass', 'fighting', 'ground']
  rock_weakness.each do |str|
    Weakness.create(name: str, element_id: id)
  end

  id = Element.find_by(name: 'ghost').id
  ghost_weakness = ['ghost']
  fighting_weakness.each do |str|
    Weakness.create(name: str, element_id: id)
  end

  id = Element.find_by(name: 'dragon').id
  dragon_weakness = ['dragon', 'ice']
  dragon_weakness.each do |str|
    Weakness.create(name: str, element_id: id)
  end

  id = Element.find_by(name: 'normal').id
  dragon_weakness = ['fighting']
  dragon_weakness.each do |str|
    Weakness.create(name: str, element_id: id)
  end


end
strengths
weaknesses



