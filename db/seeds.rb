Gym.destroy_all
Trainer.destroy_all
Leader.destroy_all
User.destroy_all
Element.destroy_all
Pokemon.destroy_all
UserPokemon.destroy_all

# def elements
#   elements = ['fire', 'water', 'electric', 'grass', 'ice', 'fighting', 'poison', 'ground', 'flying', 'psychic', 'bug', 'rock', 'ghost', 'dragon', 'normal']
#   elements.each do |element|
#     Element.create(name: element)
#   end
# end
# elements

#
# def trainers
#  Trainer.create(user: User.find_by(name: 'Gina'))
#  Trainer.create(user: User.find_by(name: 'Steven'))
#  Trainer.create(user: User.find_by(name: 'Julie'))
# end


Gym.create(name: 'Pewter City Gym')

Element.create(name: 'Grass')
Element.create(name: 'Fire')
Element.create(name: 'Water')


Pokemon.create(name: 'Bulbasaur', element_id: Element.first.id, starting_level: 4, next_id: 2)
Pokemon.create(name: 'Ivysaur', element_id: Element.first.id, starting_level: 16, next_id: 3)
Pokemon.create(name: 'Venusaur', element_id: Element.first.id,  starting_level: 36, next_id: nil)
Pokemon.create(name: 'Squirtle', element_id: Element.last.id, starting_level: 4, next_id: 5)
Pokemon.create(name: 'Wartortle', element_id: Element.last.id, starting_level: 16, next_id: 6)
Pokemon.create(name: 'Blastoise', element_id: Element.last.id, starting_level: 36, next_id: nil)

Multiplier.create(friend_element_id: 1, foe_element_id: 1, amount: 1)
Multiplier.create(friend_element_id: 1, foe_element_id: 2, amount: 0.5)
Multiplier.create(friend_element_id: 1, foe_element_id: 3, amount: 1.5)
Multiplier.create(friend_element_id: 2, foe_element_id: 1, amount: 1.5)
Multiplier.create(friend_element_id: 2, foe_element_id: 2, amount: 1)
Multiplier.create(friend_element_id: 2, foe_element_id: 3, amount: 0.5)
Multiplier.create(friend_element_id: 3, foe_element_id: 1, amount: 0.5)
Multiplier.create(friend_element_id: 3, foe_element_id: 2, amount: 1.5)
Multiplier.create(friend_element_id: 3, foe_element_id: 3, amount: 1)
