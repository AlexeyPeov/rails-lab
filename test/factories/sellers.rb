# test/factories/sellers.rb
FactoryBot.define do
  factory :seller do
    association :user, factory: [:user, :seller]
    balance { 0.0 }
  end
end
