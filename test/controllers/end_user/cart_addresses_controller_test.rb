require 'test_helper'

class EndUser::CartAddressesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get end_user_cart_addresses_show_url
    assert_response :success
  end

  test "should get new" do
    get end_user_cart_addresses_new_url
    assert_response :success
  end

end
