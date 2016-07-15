class TradeRequestsController < ApplicationController

  def new
    @recipient = UserPokemon.find(params[:pokemon_id])
    @possible_senders = User.find(session[:user_id]).user_pokemons
  end

  def create
    sender = UserPokemon.find(params[:sender_id])
    recipient = UserPokemon.find(params[:recipient_id])
    trade_request = TradeRequest.create(sender: sender, recipient: recipient)
    redirect_to trade_request_path(trade_request)
  end

  def show
    @trade_request = TradeRequest.find(params[:id])
  end

  def execute
    trade_request = TradeRequest.find(params[:trade_request_id])
    Trader.create(trade_request: trade_request).execute
    flash[:message] = "successfully traded pokemon"
    trade_request.destroy
    redirect_to user_path(session[:user_id])
  end

  def destroy
  end

end
