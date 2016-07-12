Gym.destroy_all
User.destroy_all
Trainer.destroy_all
Leader.destroy_all
Pokemon.destroy_all
Pokedex.destroy_all
TrainerSpecificPokemon.destroy_all 
def gym
Gym.create(name: 'Pewter City Gym')
end
def users
  User.create(name: 'Lee', age: 21, catchphrase: 'ayy lmao', rank: 9001, gym_id: 1)
  User.create(name: 'Gina', age: 21, catchphrase: 'idk lol??', rank: 19, gym_id: 1)
  User.create(name: 'Steven', age: 26, catchphrase: 'here comes dat boi', rank: 1, gym_id: 1)
  User.create(name: 'Julie', age: 25, catchphrase: 'whatever lmao amirite', rank: 2, gym_id: 1)
end
def leader
  leader = Leader.create(user_id: 1)
end
def pokedex
  User.all.each do |user|
    Pokedex.create(user_id: user.id)
  end
end
def trainers
 Trainer.create(user_id: 2)
 Trainer.create(user_id: 3)
 Trainer.create(user_id: 4)
end
Pokemon.create(name: 'Bulbasaur', element: 'grass', rarity: 1, evolution_state: 1, number_of_evolutions: 2, starting_level: 4)
TrainerSpecificPokemon.create(level: Pokemon.first.starting_level)
gym
users
leader
pokedex
trainers

