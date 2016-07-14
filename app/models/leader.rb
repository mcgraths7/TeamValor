class Leader < ApplicationRecord
  belongs_to :user
  # validate :there_can_only_be_one

  # def find_gym
  #   self.user.gym
  # end

  # def there_can_only_be_one
  #   if self.find_gym.find_leader.present?
  #     errors.add(:user, "THERE CAN ONLY BE ONE")
  #   end
  # end

end
