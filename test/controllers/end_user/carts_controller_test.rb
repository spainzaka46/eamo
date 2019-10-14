require 'test_helper'

class EndUser::CartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get end_user_carts_index_url
    assert_response :success
  end

end
