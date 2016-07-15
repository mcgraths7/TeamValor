class RankAdjuster < ActiveRecord::Base
  belongs_to :friend, class_name: 'UserPokemon'
  belongs_to :foe, class_name: 'UserPokemon'

  def level_up
    friend.level += 1
    friend.save
    new_rank = friend.user.rank + 1
    friend.user.update(rank: new_rank)
  end

  def level_down
    foe.level += 1
    foe.save
    foe_new_rank = foe.user.rank + 1
    foe.user.update(rank: foe_new_rank)
    my_new_rank = friend.user.rank -= 1
    friend.user.update(rank: my_new_rank)
  end

end
