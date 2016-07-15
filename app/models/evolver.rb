class Evolver < ApplicationRecord
  belongs_to :user_pokemon

  def friend
    user_pokemon
  end

  def required_level?
    friend.pokemon.next_id && friend.level >= Pokemon.find(friend.pokemon.next_id).starting_level
  end

  def evolve
    if required_level?
      friend.pokemon = Pokemon.find(friend.pokemon.next_id)
      friend.save
    end
  end

end
