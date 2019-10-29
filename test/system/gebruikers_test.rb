require "application_system_test_case"

class GebruikersTest < ApplicationSystemTestCase
  setup do
    @gebruiker = gebruikers(:one)
  end

  test "visiting the index" do
    visit gebruikers_url
    assert_selector "h1", text: "Gebruikers"
  end

  test "creating a Gebruiker" do
    visit gebruikers_url
    click_on "New Gebruiker"

    fill_in "Name", with: @gebruiker.name
    fill_in "Slug", with: @gebruiker.slug
    click_on "Create Gebruiker"

    assert_text "Gebruiker was successfully created"
    click_on "Back"
  end

  test "updating a Gebruiker" do
    visit gebruikers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @gebruiker.name
    fill_in "Slug", with: @gebruiker.slug
    click_on "Update Gebruiker"

    assert_text "Gebruiker was successfully updated"
    click_on "Back"
  end

  test "destroying a Gebruiker" do
    visit gebruikers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gebruiker was successfully destroyed"
  end
end
