Rails.application.routes.draw do

  resources :users, :pokemons, :sessions, :application, :user_pokemons, :gyms, :battles, :trade_requests

  root to: 'application#index'
  get '/login', to: 'sessions#new'
  get '/users/:id/pokemons/new', to: 'user_pokemons#new', as: 'new_pokemons'
  get '/users/:id/pokemons/:pokemon_id/edit', to: 'user_pokemons#edit', as: 'edit_pokemons'
  get '/users/:id/pokemons/:pokemon_id/show', to: 'user_pokemons#show'
  get '/users/:id/battle/:pokemon_id', to: 'battles#new', as: 'battle_new'
  post '/users/:id/:our_pokemon_id/battle/:their_pokemon_id', to: 'battles#create', as: 'battle_create'
  get '/users/:id/trade/:pokemon_id', to: 'trade_requests#new', as: 'trade_new'
  post '/users/:id/:give_id/trade/:take_id', to: 'trade_requests#create', as: 'trade_requests_create'
  get '/users/:id/accept_trade/:trade_request_id', to: 'trade_requests#accept', as: 'trade_request_accept'
  post '/users/:id/decline_trade/:trade_request_id', to: 'trade_requests#decline', as: 'trade_request_decline'
  post '/users/:id', to: 'users#destroy', as: 'delete_user'
  # get '/users/:id/pokemons', to: 'users#pokemons'
  # get '/users/:id/pokemons/:pokemon_id', to: 'user_pokemons#show'
  # post '/users/:id/pokemons/:pokemon_id', to: 'user_pokemons#create'
end
