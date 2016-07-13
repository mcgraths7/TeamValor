class Gym < ActiveRecord::Base
  has_many :users
  has_many :trainers, through: :users
  has_one :leader, through: :users
end
