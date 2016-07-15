class TradeRequestsController < ApplicationController

  def new
    @take = UserPokemon.find(params[:pokemon_id])
    @possible_gives = User.find(session[:user_id]).user_pokemons
  end

  def create
    give = UserPokemon.find(params[:give_id])
    take = UserPokemon.find(params[:take_id])
    trade_request = TradeRequest.create(give: give, take: take)
    redirect_to trade_request_path(trade_request)
  end

  def show
    @trade_request = TradeRequest.find(params[:id])
  end

  def accept
    trade_request = TradeRequest.find(params[:trade_request_id])
    Trader.create(trade_request: trade_request).execute
    flash[:message] = "successfully traded pokemon"
    TradeRequest.where('give_id = ? OR take_id = ?', trade_request.give.id, trade_request.give.id).destroy_all
    TradeRequest.where('give_id = ? OR take_id = ?', trade_request.take.id, trade_request.take.id).destroy_all
    redirect_to user_path(session[:user_id])
  end

  def destroy
    trade_request = TradeRequest.find(params[:id])
    trade_request.destroy
    flash[:message] = "declined #{trade_request.give.user.name}'s request"
    redirect_to user_path(session[:user_id])
  end

end
