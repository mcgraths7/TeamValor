class GymsController < ApplicationController
  helper_method :current_user
  def show
    @tiers = {'Top' => 'top_tier_users', 'Mid' => 'mid_tier_users', 'Low' => 'low_tier_users'}
    @gym = Gym.find(params[:id])
  end
end
