require "application_system_test_case"

class EcopointsTest < ApplicationSystemTestCase
  setup do
    @ecopoint = ecopoints(:one)
  end

  test "visiting the index" do
    visit ecopoints_url
    assert_selector "h1", text: "Ecopoints"
  end

  test "creating a Ecopoint" do
    visit ecopoints_url
    click_on "New Ecopoint"

    fill_in "Address", with: @ecopoint.address_id
    fill_in "Category", with: @ecopoint.category_id
    fill_in "Name", with: @ecopoint.name
    click_on "Create Ecopoint"

    assert_text "Ecopoint was successfully created"
    click_on "Back"
  end

  test "updating a Ecopoint" do
    visit ecopoints_url
    click_on "Edit", match: :first

    fill_in "Address", with: @ecopoint.address_id
    fill_in "Category", with: @ecopoint.category_id
    fill_in "Name", with: @ecopoint.name
    click_on "Update Ecopoint"

    assert_text "Ecopoint was successfully updated"
    click_on "Back"
  end

  test "destroying a Ecopoint" do
    visit ecopoints_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ecopoint was successfully destroyed"
  end
end
