class Pokemon < ActiveRecord::Base
  has_many :user_pokemon
  has_many :users, through: :user_pokemon
  belongs_to :element

  def advantage(foe)
    if self.element.strengths.pluck(:name).include?(foe.element.name)
      return 1.5
    elsif self.element.weaknesses.pluck(:name).include?(foe.element.name)
      return 0.5
    else
      return 1
    end
  end

end
