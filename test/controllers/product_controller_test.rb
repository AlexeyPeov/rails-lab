# test/controllers/product_controller_test.rb
require "test_helper"

class ProductControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  include FactoryBot::Syntax::Methods

  def setup
    @user = create(:user)
    @buyer = create(:buyer, user: @user)
    @seller = create(:seller, user: @user)
    sign_in @user
  end

  test "should get show buyer" do
    get show_buyer_url
    assert_response :success
  end

  test "should get show seller" do
    get show_seller_url
    assert_response :success
  end
end
