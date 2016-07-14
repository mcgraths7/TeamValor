class User < ApplicationRecord
  belongs_to :gym, optional: true
  has_one :trainer
  has_one :leader
  has_many :user_pokemons
  # accepts_nested_attributes_for
  has_secure_password
<<<<<<< HEAD
  # validates :password, presence: true
  # validates :name, presence: true
  validates_presence_of :name, :password
>>>>>>> ba4e249e1208c836b3530ddd2d9013275ccaafe3

end
