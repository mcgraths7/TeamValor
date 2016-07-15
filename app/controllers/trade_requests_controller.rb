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
    trade_request.destroy
    redirect_to user_path(session[:user_id])
  end

  def destroy
  end

end
