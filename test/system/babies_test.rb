require "application_system_test_case"

class BabiesTest < ApplicationSystemTestCase
  setup do
    @baby = babies(:one)
  end

  test "visiting the index" do
    visit babies_url
    assert_selector "h1", text: "Babies"
  end

  test "creating a Baby" do
    visit babies_url
    click_on "New Baby"

    fill_in "Name", with: @baby.name
    click_on "Create Baby"

    assert_text "Baby was successfully created"
    click_on "Back"
  end

  test "updating a Baby" do
    visit babies_url
    click_on "Edit", match: :first

    fill_in "Name", with: @baby.name
    click_on "Update Baby"

    assert_text "Baby was successfully updated"
    click_on "Back"
  end

  test "destroying a Baby" do
    visit babies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Baby was successfully destroyed"
  end
end
