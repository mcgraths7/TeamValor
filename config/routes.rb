Rails.application.routes.draw do
  resources :users, :pokemons, :sessions, :application, :user_pokemons, :gyms
  root to: 'application#index'
  get '/login', to: 'sessions#new'
  get '/users/:id/pokemons/new', to: 'user_pokemons#new', as: 'new_pokemons'
  get '/users/:id/pokemons/:pokemon_id/edit', to: 'user_pokemons#edit', as: 'edit_pokemons'
  get '/users/:id/pokemons/:pokemon_id/show', to: 'user_pokemons#show'
  # get '/users/:id/pokemons', to: 'users#pokemons'
  # get '/users/:id/pokemons/:pokemon_id', to: 'user_pokemons#show'
  # post '/users/:id/pokemons/:pokemon_id', to: 'user_pokemons#create'
end
