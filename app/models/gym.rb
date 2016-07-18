class Gym < ApplicationRecord
  has_many :users
  has_many :trainers, through: :users
  has_one :leader, through: :users # this association doesn't work for some reason
  validates_presence_of :name, :location

  def trainers
    users.joins(:trainer)
  end

  def top_tier_users
    trainers.where('rank > 25').order('rank DESC')
  end

  def mid_tier_users
    trainers.where('trainers.rank BETWEEN 11 AND 24').order('rank DESC')
  end

  def low_tier_users
    trainers.where('rank < 10').order('rank DESC')
  end

  def find_leader
    users.joins(:leader)
  end
end
