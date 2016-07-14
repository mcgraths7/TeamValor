class UserPokemonsController < ApplicationController
  def new
    @pokemons = Pokemon.all.where('starting_level < 16')
  end

  def index
    @user_pokemons = UserPokemon.all
  end

  def edit
    @user_pokemon = UserPokemon.find(params[:pokemon_id])
  end

  def show
    @user_pokemon = User.find(params[:id])
  end

  def update
    byebug
    user_pokemon = UserPokemon.find(params[:pokemon_id])
    user_pokemon.nickname = params["user_pokemon"]["nickname"]
    user_pokemon.save
    redirect_to user_path(session[:user_id])
  end

  def create
    params["pokemon"]["name"].each do |pokemon_name|
      pokemon = Pokemon.find_by(name: pokemon_name)
      UserPokemon.create(user_id: session[:user_id], pokemon: pokemon, nickname: pokemon.name, level: pokemon.starting_level)
    end
    redirect_to user_path(session[:user_id])
  end

  def destroy
  end

end
