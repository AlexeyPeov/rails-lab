# test/models/product_test.rb
require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "supports attachment of images" do
    product = Product.new(title: 'Sample Product', price: 10.00)
    assert_empty product.images.attachments

    product.images.attach(io: File.open('test/fixtures/files/sample.jpg'), filename: 'sample.jpg', content_type: 'image/jpeg')
    assert_not_empty product.images.attachments
  end
end
