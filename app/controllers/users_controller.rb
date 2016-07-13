class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show
    byebug
    @user = User.find(params[:id])
    # set_user
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    byebug
    @user = User.create(user_params)
    login(@user)
    redirect_to user_path(@user)
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private
    # def set_user
    #   @user = User.find(params[:id])
    # end
    # Potential issues with privacy and scope?

    def user_params
      params.require(:user).permit(:name, :age, :catchphrase, :rank)
    end

end
