require "application_system_test_case"

class BreastFeedingsTest < ApplicationSystemTestCase
  setup do
    @breast_feeding = breast_feedings(:one)
  end

  test "visiting the index" do
    visit breast_feedings_url
    assert_selector "h1", text: "Breast Feedings"
  end

  test "creating a Breast feeding" do
    visit breast_feedings_url
    click_on "New Breast Feeding"

    fill_in "Baby", with: @breast_feeding.baby_id
    fill_in "Duration", with: @breast_feeding.duration
    fill_in "Quantity", with: @breast_feeding.quantity
    click_on "Create Breast feeding"

    assert_text "Breast feeding was successfully created"
    click_on "Back"
  end

  test "updating a Breast feeding" do
    visit breast_feedings_url
    click_on "Edit", match: :first

    fill_in "Baby", with: @breast_feeding.baby_id
    fill_in "Duration", with: @breast_feeding.duration
    fill_in "Quantity", with: @breast_feeding.quantity
    click_on "Update Breast feeding"

    assert_text "Breast feeding was successfully updated"
    click_on "Back"
  end

  test "destroying a Breast feeding" do
    visit breast_feedings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Breast feeding was successfully destroyed"
  end
end
