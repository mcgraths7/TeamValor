class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @user_pokemons = @user.user_pokemons
    # set_user
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(user_params)
    byebug
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
      params.require(:user).permit(:name, :age, :catchphrase, :rank, :password, :gym_id)
    end

end
