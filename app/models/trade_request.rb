class TradeRequest < ApplicationRecord
  belongs_to :give, class_name: 'UserPokemon'
  belongs_to :take, class_name: 'UserPokemon'
  validate :cannot_make_same_trade_request

  def cannot_make_same_trade_request
    if TradeRequest.find_by(give: self.give, take: self.take).present?
      errors.add(:give, "can't make same trade request twice")
    end
  end
end
