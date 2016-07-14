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
  elements = ['fire', 'water', 'electric', 'grass', 'ice', 'fighting', 'poison', 'ground', 'flying', 'psychic', 'bug', 'rock', 'ghost', 'dragon', 'normal']
  elements.each do |element|
    Strength.create(name: element)
  end
end
def weaknesses 
  elements = ['fire', 'water', 'electric', 'grass', 'ice', 'fighting', 'poison', 'ground', 'flying', 'psychic', 'bug', 'rock', 'ghost', 'dragon', 'normal']
  elements.each do |element|
    Weakness.create(name: element)
  end
end
strengths
weaknesses


