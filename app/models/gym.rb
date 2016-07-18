class Gym < ApplicationRecord
  has_many :users
  has_many :trainers, through: :users
  has_many :user_pokemons, through: :users
  has_many :pokemons, through: :user_pokemons
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

  def most_common_type
    element_count = self.pokemons.group(:element_id).count.max_by {|element_id, count| count}
    element = Element.find(element_count[0]).name
    {element => element_count[1]}
  end

  def highest_level_pokemon
    pokemon = self.user_pokemons.order("level DESC")[0]
    "Level #{pokemon.level} #{pokemon.nickname}"
  end

  def trainers_with_badge
    trainers = find_leader.first.leader.badge.trainers.map {|trainer| trainer.user.name}.join(" ,")
  end

end
