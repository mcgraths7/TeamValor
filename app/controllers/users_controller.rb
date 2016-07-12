class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show
    set_user
  end

  def edit

  end

  def create
    @user = User.create(user_params)
  end

  def update
    set_user
  end

  def destroy
    set_user
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      
    end

end