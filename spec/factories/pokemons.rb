FactoryGirl.define do
  factory :pokemon do |f|
    f.name "Bulbasaur"
    f.element Element.create(name: 'Electric')
  end
end