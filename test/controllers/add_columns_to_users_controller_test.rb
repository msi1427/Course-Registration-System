require 'test_helper'

class AddColumnsToUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_columns_to_user = add_columns_to_users(:one)
  end

  test "should get index" do
    get add_columns_to_users_url
    assert_response :success
  end

  test "should get new" do
    get new_add_columns_to_user_url
    assert_response :success
  end

  test "should create add_columns_to_user" do
    assert_difference('AddColumnsToUser.count') do
      post add_columns_to_users_url, params: { add_columns_to_user: {  } }
    end

    assert_redirected_to add_columns_to_user_url(AddColumnsToUser.last)
  end

  test "should show add_columns_to_user" do
    get add_columns_to_user_url(@add_columns_to_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_columns_to_user_url(@add_columns_to_user)
    assert_response :success
  end

  test "should update add_columns_to_user" do
    patch add_columns_to_user_url(@add_columns_to_user), params: { add_columns_to_user: {  } }
    assert_redirected_to add_columns_to_user_url(@add_columns_to_user)
  end

  test "should destroy add_columns_to_user" do
    assert_difference('AddColumnsToUser.count', -1) do
      delete add_columns_to_user_url(@add_columns_to_user)
    end

    assert_redirected_to add_columns_to_users_url
  end
end
