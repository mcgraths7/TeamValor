FactoryGirl.define do
  factory :user do |f|
    f.name { "John Doe" }
    f.password { "password" }
    f.gym_id 1
  end
end