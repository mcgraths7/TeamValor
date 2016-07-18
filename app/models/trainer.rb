class Trainer < ApplicationRecord
  belongs_to :user
  has_many :badge_trainers
  has_many :badges, through: :badge_trainers
end
