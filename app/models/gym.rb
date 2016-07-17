class Gym < ApplicationRecord
  has_many :users
  has_many :trainers, through: :users
  has_one :leader, through: :users # this association doesn't work for some reason

  def find_leader
    self.users.joins(:leader)
  end
end
