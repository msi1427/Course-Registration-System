require 'test_helper'

class ResControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get res_index_url
    assert_response :success
  end

  test "should get first" do
    get res_first_url
    assert_response :success
  end

  test "should get second" do
    get res_second_url
    assert_response :success
  end

  test "should get third" do
    get res_third_url
    assert_response :success
  end

  test "should get fourth" do
    get res_fourth_url
    assert_response :success
  end

  test "should get fifth" do
    get res_fifth_url
    assert_response :success
  end

  test "should get sixth" do
    get res_sixth_url
    assert_response :success
  end

  test "should get seventh" do
    get res_seventh_url
    assert_response :success
  end

  test "should get eighth" do
    get res_eighth_url
    assert_response :success
  end

end
