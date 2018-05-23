require 'test_helper'

class OperazioaControllerTest < ActionDispatch::IntegrationTest
  test "should get transakzioa" do
    get operazioa_transakzioa_url
    assert_response :success
  end

end
