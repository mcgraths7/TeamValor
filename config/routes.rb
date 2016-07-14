Rails.application.routes.draw do
  resources :users, :pokemons, :sessions, :application, :user_pokemons
  root to: 'application#index'
  get '/login', to: 'sessions#new'
  get '/users/:id/choose_pokemon', to: 'user_pokemons#choose', as: 'choose'
  # get '/users/:id/pokemon', to: 'users#pokemon'
  # get '/users/:id/pokemons/:pokemon_id', to: 'user_pokemons#show'
  # post '/users/:id/pokemons/:pokemon_id', to: 'user_pokemons#create'
end
