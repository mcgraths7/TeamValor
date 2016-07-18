require 'rails_helper'

describe UserPokemon do
  before do
    @user =  FactoryGirl.create(:user)
    @element = FactoryGirl.create(:element) 
    @pokemon = FactoryGirl.create(:pokemon, element: @element)
    @user_pokemon = FactoryGirl.create(:user_pokemon, user: @user, pokemon: @pokemon)
  end
  describe "#nickname" do
    it "has a nickname" do
      expect(@user_pokemon.nickname).to eq(@pokemon.name)
    end
  end
  describe "#user" do
    it "belongs to a user" do
      expect(@user_pokemon.user).to eq(@user)
    end
  end

end