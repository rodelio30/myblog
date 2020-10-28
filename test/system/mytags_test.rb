require "application_system_test_case"

class MytagsTest < ApplicationSystemTestCase
  setup do
    @mytag = mytags(:one)
  end

  test "visiting the index" do
    visit mytags_url
    assert_selector "h1", text: "Mytags"
  end

  test "creating a Mytag" do
    visit mytags_url
    click_on "New Mytag"

    fill_in "Category", with: @mytag.category
    click_on "Create Mytag"

    assert_text "Mytag was successfully created"
    click_on "Back"
  end

  test "updating a Mytag" do
    visit mytags_url
    click_on "Edit", match: :first

    fill_in "Category", with: @mytag.category
    click_on "Update Mytag"

    assert_text "Mytag was successfully updated"
    click_on "Back"
  end

  test "destroying a Mytag" do
    visit mytags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mytag was successfully destroyed"
  end
end
