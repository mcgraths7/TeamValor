require 'rails_helper'

describe User do

  it "is invalid without a name" do
    FactoryGirl.build(:user, name: nil).should_not be_valid
  end

  it "is invalid without a password" do
    FactoryGirl.build(:user, password: nil).should_not be_valid
  end




  # it "has a valid name" do


  # end
  
  # it "has a valid password" do

  # end
  
  # it "belongs to a gym" do 

  # end

end