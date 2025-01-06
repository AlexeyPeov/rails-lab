
require "application_system_test_case"

class HomePageTest < ApplicationSystemTestCase
  test "displays list of products" do
    visit root_path
    assert_selector '.products-grid', count: 1
    assert_selector '.product-card', minimum: 1

    within '.product-card' do
      assert_selector 'img', count: 1
      assert_selector 'p', minimum: 3
    end
  end
end
