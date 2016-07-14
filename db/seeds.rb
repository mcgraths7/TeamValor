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
def pokemon
  Pokemon.create(name: 'bobasaur', element_id: Element.find_by(name: 'grass'), starting_level: 5, next_id: 2)
  Pokemon.create(name: 'ivysaur', element_id: Element.find_by(name: 'grass'), starting_level: 16, next_id: 3)
  Pokemon.create(name: 'venasaur', element_id: Element.find_by(name: 'grass'), starting_level: 36, next_id: nil)
  Pokemon.create(name: 'charmander', element_id: Element.find_by(name: 'fire'), starting_level: 5, next_id: 5)
  Pokemon.create(name: 'charmeleon', element_id: Element.find_by(name: 'fire'), starting_level: 16, next_id: 6)
  Pokemon.create(name: 'charizard', element_id: Element.find_by(name: 'fire'), starting_level: 36, next_id: nil)
end
pokemon
User.create(name: 'jeff')
User.create(name: 'sam')
def user_pokemon
  UserPokemon.create(nickname: Pokemon.find_by(name: 'bobasaur'), pokemon_id: Pokemon.find_by(name: 'bobasaur').id, user_id: 1)
  UserPokemon.create(nickname: Pokemon.find_by(name: 'ivysaur'), pokemon_id: Pokemon.find_by(name: 'ivysaur').id, user_id: 1)
  UserPokemon.create(nickname: Pokemon.find_by(name: 'venasaur'), pokemon_id: Pokemon.find_by(name: 'venasaur').id, user_id: 1)
  UserPokemon.create(nickname: Pokemon.find_by(name: 'charmander'), pokemon_id: Pokemon.find_by(name: 'charmander').id, user_id: 2)
  UserPokemon.create(nickname: Pokemon.find_by(name: 'charmeleon'), pokemon_id: Pokemon.find_by(name: 'charmeleon').id, user_id: 2)
  UserPokemon.create(nickname: Pokemon.find_by(name: 'charizard'), pokemon_id: Pokemon.find_by(name: 'charizard').id, user_id: 2)
end
user_pokemon



