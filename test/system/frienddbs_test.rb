require "application_system_test_case"

class FrienddbsTest < ApplicationSystemTestCase
  setup do
    @frienddb = frienddbs(:one)
  end

  test "visiting the index" do
    visit frienddbs_url
    assert_selector "h1", text: "Frienddbs"
  end

  test "should create frienddb" do
    visit frienddbs_url
    click_on "New frienddb"

    fill_in "Email", with: @frienddb.email
    fill_in "First name", with: @frienddb.first_name
    fill_in "Last name", with: @frienddb.last_name
    fill_in "Twitter", with: @frienddb.twitter
    click_on "Create Frienddb"

    assert_text "Frienddb was successfully created"
    click_on "Back"
  end

  test "should update Frienddb" do
    visit frienddb_url(@frienddb)
    click_on "Edit this frienddb", match: :first

    fill_in "Email", with: @frienddb.email
    fill_in "First name", with: @frienddb.first_name
    fill_in "Last name", with: @frienddb.last_name
    fill_in "Twitter", with: @frienddb.twitter
    click_on "Update Frienddb"

    assert_text "Frienddb was successfully updated"
    click_on "Back"
  end

  test "should destroy Frienddb" do
    visit frienddb_url(@frienddb)
    click_on "Destroy this frienddb", match: :first

    assert_text "Frienddb was successfully destroyed"
  end
end
