class Element < ApplicationRecord
  has_many :pokemon, inverse_of: :element
  
end
