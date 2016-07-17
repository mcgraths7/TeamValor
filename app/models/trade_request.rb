class TradeRequest < ApplicationRecord
  belongs_to :give, class_name: 'UserPokemon'
  belongs_to :take, class_name: 'UserPokemon'
  validates_uniqueness_of :give_id, scope: :take_id
  # validate :cannot_make_same_trade_request

# this is a little glitchy, gonna ask jeff what's up
  # def cannot_make_same_trade_request
  #   byebug
  #   if TradeRequest.find_by(give: self.give, take: self.take).present?
  #     errors.add(:give, "can't make same trade request twice")
  #   end
  # end
end
