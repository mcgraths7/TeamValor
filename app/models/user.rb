class User < ApplicationRecord
  attr_accessor :skip_password_validation
  belongs_to :gym, optional: true
  has_one :trainer
  has_one :leader
  has_many :user_pokemons
  has_secure_password
  validates_presence_of :name, :password

  # these methods are useful, but it makes me think that the class user knows too much
  def trade_requests_as_sender
    TradeRequest.joins(give: :user).where('user_id = ?', self.id)
  end

  def sender?
    trade_requests_as_give.present?
  end

  def trade_requests_as_recipient
    TradeRequest.joins(take: :user).where('user_id = ?', self.id)
  end

  def recipient?
    trade_requests_as_recipient.present?
  end

  
end
