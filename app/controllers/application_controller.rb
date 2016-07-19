class ApplicationController < ActionController::Base
  # rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :current_user_leader_of
  helper_method :current_user_can_kick_out

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def current_user_leader_of(gym)
    current_user.leader.present? && current_user.gym_id == gym.id
  end

  def current_user_can_kick_out(user)
    current_user.leader.present? && current_user.gym_id == user.gym.id && current_user != user
  end


  def login(user)
    session[:user_id] = user.id
  end

  def logged_in?
    !!current_user
  end

  def index
  end

end
