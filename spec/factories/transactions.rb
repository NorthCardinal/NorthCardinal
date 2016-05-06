FactoryGirl.define do
  factory :transaction do
    association :debitor_account, factory: :account
    association :creditor_account, factory: :account
    description { FFaker::Lorem.sentence(5) }
    amount { rand * 10.0 }
  end
end
