class TradeRequest < ApplicationRecord
  belongs_to :give, class_name: 'UserPokemon'
  belongs_to :take, class_name: 'UserPokemon'
end
