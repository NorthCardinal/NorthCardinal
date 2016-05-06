FactoryGirl.define do
  factory :account do
    name { Account.names.sample }
    description { FFaker::Lorem.sentence(4) }
  end

end
