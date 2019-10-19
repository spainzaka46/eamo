require 'test_helper'

class EndUser::PaysControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get end_user_pays_show_url
    assert_response :success
  end

  test "should get new" do
    get end_user_pays_new_url
    assert_response :success
  end

end
