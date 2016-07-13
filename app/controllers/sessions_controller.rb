class SessionsController < ApplicationController

  def new
  end

  def create

    user = User.find_by(name: session_params[:name])
    byebug
    if user.valid? && user.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash[:message] = "Incorrect Password, please try again!"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

  private

  def session_params
    params.require(:user).permit(:name, :password)
  end
end
