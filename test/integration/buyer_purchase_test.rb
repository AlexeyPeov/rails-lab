# test/integration/buyer_purchase_test.rb
require "test_helper"

class BuyerPurchaseTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  include FactoryBot::Syntax::Methods

  test "allows buyer to purchase product" do
    buyer = create(:buyer, balance: 100.00)
    seller = create(:seller)
    product = create(:product, price: 50.00, seller: seller)

    sign_in buyer.user
    post buy_product_path(product_id: product.id)

    buyer.reload
    seller.reload
    product.reload

    assert_equal 50.00, buyer.balance
    assert_equal 50.00, seller.balance
    assert_equal buyer.id, product.buyer_id
  end
end
