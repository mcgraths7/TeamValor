class Trainer < ApplicationRecord
  belongs_to :user
  has_many :badges
  has_many :leaders, through: :badges
end
