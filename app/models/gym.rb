class Gym < ActiveRecord::Base
  has_many :users
  has_many :trainers, through: :users
  has_one :leader, through: :users

  def find_leader
    self.users.joins(:leader).first
  end

end
