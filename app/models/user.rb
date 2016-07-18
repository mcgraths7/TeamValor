class User < ApplicationRecord
  attr_accessor :skip_password_validation
  belongs_to :gym, optional: true
  has_one :trainer
  has_one :leader
  has_many :user_pokemons
  has_many :badge_trainers
  has_many :badges, through: :badge_trainers
  has_secure_password
  validates_presence_of :name, :password

  # these methods are useful, but it makes me think that the class user knows too much
  # then again it's just answering questions about itself, nothing actually changes data
  def trade_requests_as_sender
    TradeRequest.joins(give: :user).where('user_id = ?', self.id)
  end

  def sender?
    trade_requests_as_sender.present?
  end

  def trade_requests_as_recipient
    TradeRequest.joins(take: :user).where('user_id = ?', self.id)
  end

  def recipient?
    trade_requests_as_recipient.present?
  end

  def pending_trade_requests
    sender? || recipient?
  end

end
