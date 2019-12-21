require "application_system_test_case"

class FamiliesTest < ApplicationSystemTestCase
  setup do
    @family = families(:one)
  end

  test "visiting the index" do
    visit families_url
    assert_selector "h1", text: "Families"
  end

  test "creating a Family" do
    visit families_url
    click_on "New Family"

    fill_in "Birthday", with: @family.birthday
    fill_in "Name", with: @family.name
    fill_in "Relationship", with: @family.relationship
    click_on "Create Family"

    assert_text "Family was successfully created"
    click_on "Back"
  end

  test "updating a Family" do
    visit families_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @family.birthday
    fill_in "Name", with: @family.name
    fill_in "Relationship", with: @family.relationship
    click_on "Update Family"

    assert_text "Family was successfully updated"
    click_on "Back"
  end

  test "destroying a Family" do
    visit families_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Family was successfully destroyed"
  end
end
