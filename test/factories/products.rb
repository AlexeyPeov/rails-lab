# test/factories/products.rb
FactoryBot.define do
  factory :product do
    sequence(:title) { |n| "Product #{n}" }
    price { 9.99 }
    description { "Sample description" }
    association :seller

    after(:build) do |product|
      product.images.attach(
        io: File.open(Rails.root.join('test', 'fixtures', 'files', 'sample.jpg')),
        filename: 'sample.jpg',
        content_type: 'image/jpeg'
      )
    end
  end
end
