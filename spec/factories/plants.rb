FactoryGirl.define do
  factory :plant do
    name { 'Plant' }
    description { FFaker::Lorem.sentence(4) }
  end
end
