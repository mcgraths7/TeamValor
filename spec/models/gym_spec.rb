require 'rails_helper'

describe Gym do
  before do
    @gym = FactoryGirl.create(:gym)
    @user_1 = FactoryGirl.create(:user, gym: @gym)
    @user_2 = FactoryGirl.create(:user, gym: @gym) 
    @user_3 = FactoryGirl.create(:user, gym: @gym) 

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
end