require "application_system_test_case"

class AddColumnsToUsersTest < ApplicationSystemTestCase
  setup do
    @add_columns_to_user = add_columns_to_users(:one)
  end

  test "visiting the index" do
    visit add_columns_to_users_url
    assert_selector "h1", text: "Add Columns To Users"
  end

  test "creating a Add columns to user" do
    visit add_columns_to_users_url
    click_on "New Add Columns To User"

    click_on "Create Add columns to user"

    assert_text "Add columns to user was successfully created"
    click_on "Back"
  end

  test "updating a Add columns to user" do
    visit add_columns_to_users_url
    click_on "Edit", match: :first

    click_on "Update Add columns to user"

    assert_text "Add columns to user was successfully updated"
    click_on "Back"
  end

  test "destroying a Add columns to user" do
    visit add_columns_to_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add columns to user was successfully destroyed"
  end
end
