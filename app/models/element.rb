class Element < ApplicationRecord

  has_many :pokemon
  has_many :multipliers, foreign_key: 'friend_element_id'
  has_many :multipliers, foreign_key: 'foe_element_id'

end
