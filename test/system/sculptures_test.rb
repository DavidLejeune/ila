require "application_system_test_case"

class SculpturesTest < ApplicationSystemTestCase
  setup do
    @sculpture = sculptures(:one)
  end

  test "visiting the index" do
    visit sculptures_url
    assert_selector "h1", text: "Sculptures"
  end

  test "creating a Sculpture" do
    visit sculptures_url
    click_on "New Sculpture"

    fill_in "Copyright", with: @sculpture.copyright
    fill_in "Credit", with: @sculpture.credit
    fill_in "Description", with: @sculpture.description
    fill_in "Title", with: @sculpture.title
    click_on "Create Sculpture"

    assert_text "Sculpture was successfully created"
    click_on "Back"
  end

  test "updating a Sculpture" do
    visit sculptures_url
    click_on "Edit", match: :first

    fill_in "Copyright", with: @sculpture.copyright
    fill_in "Credit", with: @sculpture.credit
    fill_in "Description", with: @sculpture.description
    fill_in "Title", with: @sculpture.title
    click_on "Update Sculpture"

    assert_text "Sculpture was successfully updated"
    click_on "Back"
  end

  test "destroying a Sculpture" do
    visit sculptures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sculpture was successfully destroyed"
  end
end
