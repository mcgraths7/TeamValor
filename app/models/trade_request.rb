class TradeRequest < ApplicationRecord
  belongs_to :sender, class_name: 'UserPokemon'
  belongs_to :recipient, class_name: 'UserPokemon'
  has_one :trader
end
