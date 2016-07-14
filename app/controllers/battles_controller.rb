class BattlesController < ApplicationController

  def new
    @foe = UserPokemon.find(params[:pokemon_id])
    @friends = User.find(session[:user_id]).user_pokemons
  end

  def show
    @battle = Battle.find(params[:id])
  end

  def create
    friend = UserPokemon.find(params[:our_pokemon_id])
    foe = UserPokemon.find(params[:their_pokemon_id])
    friend.battle(foe)
    redirect_to battle_path(Battle.last)
  end


end
