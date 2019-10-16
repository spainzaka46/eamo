require 'test_helper'

class EndUser::AddressesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get end_user_addresses_new_url
    assert_response :success
  end

end
