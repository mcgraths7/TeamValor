class GymsController < ApplicationController
  helper_method :current_user
  def show
    @gym = Gym.find(params[:id])
  end
end
