class Gym < ActiveRecord::Base
  has_many :trainers
  belongs_to :leader
end