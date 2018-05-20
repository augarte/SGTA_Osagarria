require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get kontua" do
    get user_kontua_url
    assert_response :success
  end

end
