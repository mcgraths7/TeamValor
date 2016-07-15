
  class LevelAdjuster
    def initialize(friend, foe)
      @friend = friend
      @foe = foe
    end
    def win
      @friend.level += 1
      @friend.save
    end
    def loss
      @foe.level += 1
      @foe.save
    end
  end
