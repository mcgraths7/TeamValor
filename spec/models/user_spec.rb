require 'rails_helper'

describe User do
  before do
      @user = FactoryGirl.create(:user, name: "John Doe", password: "hello")
      @element = FactoryGirl.create(:element) 
      @pokemon = FactoryGirl.create(:pokemon)
      @poke_1 = FactoryGirl.create(:user_pokemon, pokemon: @pokemon, user: user)
      @poke_2 = FactoryGirl.create(:user_pokemon, pokemon: @pokemon, user: user)
      @poke_3 = FactoryGirl.create(:user_pokemon, pokemon: @pokemon, user: user)
    end
  let(:user) { FactoryGirl.create(:user,name: "John Doe", password: "hello") }
  describe "#name" do
    it "should have a name" do
      expect(user.name).to eq("John Doe")
    end
  end
  describe "#password" do 
    it "should have a password" do
      expect(user.password).to eq("hello")
    end
  end

  describe "#rank" do
    before do
      Trainer.create(user: user)
    end
    it "should have a rank, through trainer" do
      expect(user.trainer.rank).to eq(1)

    end
  end

  describe "#pokemon" do
    
    it "should have many pokemon" do 
      expect(user.user_pokemons).to eq([@poke_1, @poke_2, @poke_3])
    end
  end


end