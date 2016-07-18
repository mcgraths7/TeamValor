
  class Battle < ApplicationRecord
    belongs_to :friend, class_name: 'UserPokemon'
    belongs_to :foe, class_name: 'UserPokemon'
    validate :pokemon_must_be_similar_levels

    def result
      multiplier = Multiplier.find_by(friend_element: friend.pokemon.element, foe_element: foe.pokemon.element).amount
      friend_power = friend.level + rand(4..6)*multiplier
      foe_power = foe.level + rand(4..6)
      friend_power >= foe_power ? 'won' : 'lost'
    end

    def pokemon_must_be_similar_levels
      if friend.level - foe.level >= 4
        errors.add(:friend, "dont be cheap")
      end
    end

  end
