class Trader < ApplicationRecord
  belongs_to :trade_request

  def execute
    user_1 = trade_request.sender.user
    user_2 = trade_request.recipient.user
    trade_request.sender.user = user_2
    trade_request.recipient.user = user_1
    trade_request.sender.save
    trade_request.recipient.save
  end

end
