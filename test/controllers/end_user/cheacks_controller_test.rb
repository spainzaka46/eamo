require 'test_helper'

class EndUser::CheacksControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get end_user_cheacks_show_url
    assert_response :success
  end

  test "should get new" do
    get end_user_cheacks_new_url
    assert_response :success
  end

end
