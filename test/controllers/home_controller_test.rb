# test/controllers/home_controller_test.rb
require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  include FactoryBot::Syntax::Methods

  def setup
    @user = create(:user)
    @buyer = create(:buyer, user: @user)
    sign_in @user
  end

  test "should get index" do
    get root_url
    assert_response :success
  end
end
