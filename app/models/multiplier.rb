class Multiplier < ApplicationRecord
  belongs_to :friend_element, class_name: 'Element'
  belongs_to :foe_element, class_name: 'Element'
end
