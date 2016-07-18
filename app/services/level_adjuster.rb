  class LevelAdjuster

    def initialize(friend, foe)
      @friend = friend
      @foe = foe
    end

    def win
      @friend.level += 1
      @friend.save
      @friend.user.trainer.update(rank: @friend.user.trainer.rank + 1)
    end

    def assign_badge
      bt = BadgeTrainer.create(badge: @foe.user.leader.badge, trainer: @friend.user.trainer) if @friend.user.trainer && @foe.user.leader
      bt.save ? "You have acquired the #{@foe.user.leader.badge.name} badge!" : nil
    end

    def loss
      if @foe.user.trainer
        @foe.level += 1
        @foe.save
        @foe.user.trainer.update(rank: @foe.user.trainer.rank + 1)
        @friend.user.trainer.update(rank: @friend.user.trainer.rank - 1)
      end
    end

  end
