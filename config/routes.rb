Rails.application.routes.draw do
  resources :users, :pokemon
  get '/users/:id/pokemon', to: 'users#pokemon'
  get '/users/:id/pokemons/:pokemon_id', to: 'user_pokemons#show'
  post '/users/:id/pokemons/:pokemon_id', to: 'user_pokemons#create'
end
