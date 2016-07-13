class Element < ApplicationRecord
  has_many :pokemon, inverse_of: :element
  has_many :strengths
  has_many :weaknesses

end
