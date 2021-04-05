require "application_system_test_case"

class ClucksTest < ApplicationSystemTestCase
  setup do
    @cluck = clucks(:one)
  end

  test "visiting the index" do
    visit clucks_url
    assert_selector "h1", text: "Clucks"
  end

  test "creating a Cluck" do
    visit clucks_url
    click_on "New Cluck"

    fill_in "Cluck", with: @cluck.cluck
    click_on "Create Cluck"

    assert_text "Cluck was successfully created"
    click_on "Back"
  end

  test "updating a Cluck" do
    visit clucks_url
    click_on "Edit", match: :first

    fill_in "Cluck", with: @cluck.cluck
    click_on "Update Cluck"

    assert_text "Cluck was successfully updated"
    click_on "Back"
  end

  test "destroying a Cluck" do
    visit clucks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cluck was successfully destroyed"
  end
end
