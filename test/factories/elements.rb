FactoryGirl.define do
  factory :element do
    name "MyString"
    stronger_than 1
    weaker_than 1
    equal_to 1
  end
end
