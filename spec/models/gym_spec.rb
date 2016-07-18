require 'rails_helper'

describe Gym do
  let(:gym) { Gym.create(name: "Pewter City Gym", location: "Pewter City")}
  
  it "has a name" do
    expect(gym.name).to match("Pewter City Gym")
  end

  it "has a location" do 
    expect(gym.location).to match("Pewter City")
  end
  it "has many users"  do
    FactoryGirl.create(:gym)
    user_1 = FactoryGirl.create(:user, gym_id: 3)
    user_2 = FactoryGirl.create(:user, gym_id: 3)
    user_3 = FactoryGirl.create(:user, gym_id: 3)
    expect(gym.users).to eq([user_1, user_2, user_3])
  end

    
  it "is invalid without a name" do 
    FactoryGirl.build(:gym, name: nil).should_not be_valid
  end

  it "is invalid without a location" do
    FactoryGirl.build(:gym, location: nil).should_not be_valid
  end


end