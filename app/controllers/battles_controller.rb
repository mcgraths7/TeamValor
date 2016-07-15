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
    battle = Battle.create(friend: friend, foe: foe)
    if battle.save
      ra = RankAdjuster.create(friend: friend, foe: foe)
      Evolver.create(user_pokemon: friend).evolve
      battle.result == 'won' ? ra.level_up : ra.level_down
      redirect_to battle_path(Battle.last)
    else
      flash[:message] = "don't be cheap"
      redirect_to user_path(foe.user)
    end
  end


end
