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
      la = LevelAdjuster.new(friend, foe)
      if battle.result == 'won'
        la.win
        flash[:message] = la.assign_badge
      else
        la.loss
      end
      byebug
      redirect_to battle_path(Battle.last)
    else
      flash[:message] = "don't be cheap"
      redirect_to user_path(foe.user)
    end
  end

end
