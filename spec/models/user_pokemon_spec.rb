require 'rails_helper'

describe UserPokemon do
  it "has a nickname" do
    user = FactoryGirl.create(:user)
    pokemon = FactoryGirl.create(:pokemon)
    user_pokemon = FactoryGirl.create(:user_pokemon)

    expect(user_pokemon.nickname).to eq(pokemon.name)
  end
  it "belongs to a user" do
    user = FactoryGirl.create(:user)
    pokemon = FactoryGirl.create(:pokemon)
    user_pokemon = FactoryGirl.create(:user_pokemon, user_id: 4)
    
    expect(user_pokemon.user).to eq(user)
    end
end