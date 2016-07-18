class Badge < ApplicationRecord
  belongs_to :leader
  has_many :badge_trainers
  has_many :trainers, through: :badge_trainers
end
