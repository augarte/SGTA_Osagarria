require 'test_helper'

class UserSessionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_session_index_url
    assert_response :success
  end

end
