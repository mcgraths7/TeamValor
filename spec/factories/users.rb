FactoryGirl.define do
  factory :user do |f|
    f.name { Faker::Name.name }
    f.password { Faker::Internet.password }
    f.gym_id 1
  end
end