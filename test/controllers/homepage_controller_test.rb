require 'test_helper'

class HomepageControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get homepage_welcome_url
    assert_response :success
  end

end
