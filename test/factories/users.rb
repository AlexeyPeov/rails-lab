# test/factories/users.rb
FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    password { 'password' }
    first_name { 'John' }
    last_name { 'Doe' }
    is_buyer { true }

    trait :buyer do
      is_buyer { true }
    end

    trait :seller do
      is_buyer { false }
    end
  end
end
