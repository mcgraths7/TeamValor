class BadgeTrainer < ApplicationRecord
  belongs_to :badge
  belongs_to :trainer
  validates_uniqueness_of :badge_id, :scope => :trainer_id
end
