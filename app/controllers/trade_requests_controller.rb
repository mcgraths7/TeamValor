class TradeRequestsController < ApplicationController

  def new
    @take = UserPokemon.find(params[:pokemon_id])
    @possible_gives = User.find(session[:user_id]).user_pokemons
  end

  def create
    give = UserPokemon.find(params[:give_id])
    take = UserPokemon.find(params[:take_id])
    trade_request = TradeRequest.create(give: give, take: take)
    # if trade_request.save
      flash[:message] = "You have requested to trade  #{trade_request.give.nickname} in exchange for #{trade_request.take.user.name}'s #{trade_request.take.pokemon.name}."
    # else
    #   flash[:message] = "You have already made this trade request."
    # end
    redirect_to user_path(session[:user_id])
  end

  def show
    @trade_request = TradeRequest.find(params[:id])
  end

  def user
    @user = User.find(session[:user_id])
  end

  def accept
    trade_request = TradeRequest.find(params[:trade_request_id])
    Trader.new(trade_request).execute
    flash[:message] = "Successfully traded pokemon!"
    TradeRequest.where('give_id = ? OR take_id = ?', trade_request.give.id, trade_request.give.id).destroy_all
    TradeRequest.where('give_id = ? OR take_id = ?', trade_request.take.id, trade_request.take.id).destroy_all
    redirect_to user_path(session[:user_id])
  end

  def destroy
    trade_request = TradeRequest.find(params[:id])
    byebug
    trade_request.destroy
    if session[:user_id] == trade_request.give.user.id
      flash[:message] = "Declined your trade request to #{trade_request.take.user.name}."
    else
      flash[:message] = "Declined #{trade_request.give.user.name}'s request."
    end
    redirect_to user_path(session[:user_id])
  end

end
