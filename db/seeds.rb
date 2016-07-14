Gym.destroy_all
User.destroy_all
Trainer.destroy_all
Leader.destroy_all
Pokemon.destroy_all
UserPokemon.destroy_all
def gym
Gym.create(name: 'Pewter City Gym')
end
def users
  User.create(name: 'Lee', age: 21, catchphrase: 'ayy lmao', rank: 9001, gym: Gym.first)
  User.create(name: 'Gina', age: 21, catchphrase: 'idk lol??', rank: 19, gym: Gym.first)
  User.create(name: 'Steven', age: 26, catchphrase: 'here comes dat boi', rank: 1, gym: Gym.first)
  User.create(name: 'Julie', age: 25, catchphrase: 'whatever lmao amirite', rank: 2, gym: Gym.first)
end
def leader
  leader = Leader.create(user: User.first)
end

def trainers
 Trainer.create(user: User.find_by(name: 'Gina'))
 Trainer.create(user: User.find_by(name: 'Steven'))
 Trainer.create(user: User.find_by(name: 'Julie'))
end
gym
users
leader
trainers
Element.create(name: 'Grass')
Element.create(name: 'Fire')
Pokemon.create(name: 'Bulbasaur', element: Element.first, battle_power: 2, starting_level: 4, next_id: 2)
Pokemon.create(name: 'Ivysaur', element: Element.first, battle_power: 4, starting_level: 16, next_id: 3)
Pokemon.create(name: 'Venusaur', element: Element.first, battle_power: 8, starting_level: 36, next_id: nil)
Pokemon.create(name: 'Charmander', element: Element.last, battle_power: 2, starting_level: 4, next_id: 5)
Pokemon.create(name: 'Charmeleon', element: Element.last, battle_power: 4, starting_level: 16, next_id: 6)
Pokemon.create(name: 'Charizard', element: Element.first, battle_power: 8, starting_level: 36, next_id: nil)
UserPokemon.create(user: User.find_by(name: 'Lee'), pokemon: Pokemon.find_by(name: 'Bulbasaur'), level: Pokemon.find_by(name: 'Bulbasaur').starting_level)
Element.first.weaknesses << Weakness.create(name: Element.second.name)
UserPokemon.create(nickname: 'boba', user: User.find_by(name: 'Lee'), pokemon: Pokemon.find_by(name: 'Bulbasaur'), Pokemon.find_by(name: 'Bulbasaur').starting_level)
UserPokemon.create(user: User.find_by(name: 'Gina'), pokemon: Pokemon.find_by(name: 'Charmander'), level: Pokemon.find_by(name: 'Charmander').starting_level)
