  class Evolver
    def initialize(user_pokemon)
      @user_pokemon = user_pokemon
    end
    def friend
      @user_pokemon
    end
    def required_level?
      friend.pokemon.next_id && friend.level >= Pokemon.find(friend.pokemon.next_id).starting_level
    end
    def evolve
      if required_level?
        next_pokemon = Pokemon.find(friend.pokemon.next_id)
        friend.pokemon = next_pokemon
        friend.nickname = next_pokemon.name
        friend.save
      end
    end
  end
