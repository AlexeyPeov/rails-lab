# test/integration/load_test.rb
require "test_helper"

class LoadTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  include FactoryBot::Syntax::Methods

  def setup
    @user = create(:user)
    @buyer = create(:buyer, user: @user)
    sign_in @user
  end

  test "handles high load on homepage" do
    1000.times do
      get root_url
      assert_response :success
    end
  end
end
