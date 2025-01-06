# test/models/user_test.rb
require "test_helper"

class UserTest < ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods

  test "validates format of email" do
    user = build(:user, email: 'invalid_email')
    assert_not user.valid?
    assert_includes user.errors[:email], 'is invalid'

    user.email = 'valid.email@example.com'
    assert user.valid?
  end

  test "sets default is_buyer to true if not specified" do
    user = build(:user)
    assert user.is_buyer
  end
end
