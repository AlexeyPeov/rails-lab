# test/factories/buyers.rb
FactoryBot.define do
  factory :buyer do
    association :user, factory: [:user, :buyer]
    balance { 0.0 }
  end
end