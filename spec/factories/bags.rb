FactoryGirl.define do
  factory :bag do
    name { 'Bag' }
    description { FFaker::Lorem.sentence(4) }
  end
end
