require 'rails_helper'

describe Gym do
  before do
    
    @gym = FactoryGirl.create(:gym)
    @user_1 = FactoryGirl.create(:user, gym: @gym)
    @user_2 = FactoryGirl.create(:user, gym: @gym) 
    @user_3 = FactoryGirl.create(:user, gym: @gym)
    @element_1 = Element.create(name: "electric")
    @element_2 = Element.create(name: "grass")
    @pokemon_1 = Pokemon.create(name: "Bulbasaur", element: @element_2)
    @pokemon_2 = Pokemon.create(name: "Pikachu", element: @element_1)
    @user_pokemon_1 = UserPokemon.create(nickname: @pokemon_1.name, user: @user_1, pokemon: @pokemon_1, level: 5)
    @user_pokemon_2 = UserPokemon.create(nickname: @pokemon_2.name, user: @user_2, pokemon: @pokemon_2, level: 12)

  end
  describe '#name' do
    it "has a name" do
      expect(@gym.name).to eq("Pewter City Gym")
    end
  end
  describe '#location' do 
    it "has a location" do 
      expect(@gym.location).to eq("Pewter City")
    end
  end
  describe '#users' do   
    it "has many users"  do
      expect(@gym.users).to eq([@user_1, @user_2, @user_3])
    end
  end

  describe "#highest_level_pokemon" do
    it "finds the highest level pokemon" do
        pokemon = Gym.first.user_pokemons.order("level DESC")[0]
        expect("Level #{pokemon.level} #{pokemon.nickname}").to eq("Level 12 Pikachu")
    end
  end
end