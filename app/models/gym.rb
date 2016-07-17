class Gym < ApplicationRecord
  has_many :users
  has_many :trainers, through: :users
  has_one :leader, through: :users # this association doesn't work for some reason

  def top_tier_users
    self.users.joins(:trainer).where('rank > 25').order('rank DESC')
  end

  def mid_tier_users
    self.users.joins(:trainer).where('trainers.rank BETWEEN 11 AND 24').order('rank DESC')
  end

  def low_tier_users
    self.users.joins(:trainer).where('rank < 10').order('rank DESC')
  end

  def find_leader
    self.users.joins(:leader)
  end
end
