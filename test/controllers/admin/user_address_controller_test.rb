require 'test_helper'

class Admin::UserAddressControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admin_user_address_edit_url
    assert_response :success
  end

end
