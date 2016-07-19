  class LevelAdjuster

    def initialize(friend, foe)
      @friend = friend
      @foe = foe
    end

    def win
      @friend.level += 1
      @friend.save
      if @friend.user.trainer
      @friend.user.trainer.update(rank: @friend.user.trainer.rank + 1)
      end
    end

    def assign_badge
      if @foe.user.leader
      bt = BadgeTrainer.create(badge: @foe.user.leader.badge, trainer: @friend.user.trainer) if @friend.user.trainer && @foe.user.leader
      bt.save ? "You have acquired the #{@foe.user.leader.badge.name} badge!" : nil
      end
    end

    def loss
      if @foe.user.trainer
        @foe.level += 1
        @foe.save
        if @foe.user.trainer && @friend.user.trainer
        @foe.user.trainer.update(rank: @foe.user.trainer.rank + 1)
        @friend.user.trainer.update(rank: @friend.user.trainer.rank - 1)
        end
      end
    end

  end
