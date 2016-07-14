class User < ActiveRecord::Base
  belongs_to :gym, optional: true
  has_one :trainer
  has_one :leader
  has_many :user_pokemons
  has_secure_password

  validates :password, presence: true
  validates :name, presence: true

end
