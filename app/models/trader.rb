
  class Trader
    def initialize(trade_request)
      @trade_request = trade_request
    end

    def execute
      user_1 = @trade_request.give.user
      user_2 = @trade_request.take.user
      @trade_request.give.user = user_2
      @trade_request.take.user = user_1
      @trade_request.give.save
      @trade_request.take.save
    end
  end
