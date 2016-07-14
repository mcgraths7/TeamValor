class Gym < ApplicationRecord
  has_many :users
  has_many :trainers, through: :users
  has_one :leader, through: :users
# leader (rename to leader not find_leader, and shouldn't leader return this from me, from the association?)
  def find_leader
    self.users.joins(:leader).first
  end

end
