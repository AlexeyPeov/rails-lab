require "application_system_test_case"

class AccountMenuTest < ApplicationSystemTestCase
  test "allows access to main functions" do
    visit root_path
    find('.account-icon').click
    click_link 'Добавить'
    assert_current_path create_product_path
    go_back
    click_link 'Аккаунт'
    assert_current_path show_seller_path
    go_back
    click_link 'Редактировать'
    assert_current_path edit_user_registration_path
  end
end
