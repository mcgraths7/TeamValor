
  class LevelAdjuster < ActiveRecord::Base

    def initialize(friend, foe)
      @friend = friend
      @foe = foe
    end

    def win
      @friend.level += 1
      @friend.save
      byebug
      @friend.user.trainer.update(rank: @friend.user.trainer.rank + 1)
    end

    def loss
      @foe.level += 1
      @foe.save
      @foe.user.trainer.update(rank: @foe.user.trainer.rank + 1)
    end

  end
