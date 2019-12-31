require 'test_helper'

class RegisteredControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get registered_index_url
    assert_response :success
  end

end
