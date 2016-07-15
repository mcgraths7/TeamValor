
  class LevelAdjuster < ActiveRecord::Base
    belongs_to :friend, class_name: 'UserPokemon'
    belongs_to :foe, class_name: 'UserPokemon'

    def win
      friend.level += 1
      friend.save
    end

    def loss
      foe.level += 1
      foe.save
    end

  end
