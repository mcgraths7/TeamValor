class UserPokemonsController < ApplicationController

  def choose
    @pokemons = Pokemon.all
  end
  
  def new
    byebug
    pokemon_names = params["pokemon"]["name"]
    @pokemon = pokemon_names.map do |name|
      Pokemon.find_by(name: pokemon_names)
    end

  end

  def index

  end

  def edit

  end

  def show
    @user_pokemon = User
  end

  def update

  end

  def create

  end

  def destroy

  end

end
