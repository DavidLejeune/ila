require 'test_helper'

class GebruikersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gebruiker = gebruikers(:one)
  end

  test "should get index" do
    get gebruikers_url
    assert_response :success
  end

  test "should get new" do
    get new_gebruiker_url
    assert_response :success
  end

  test "should create gebruiker" do
    assert_difference('Gebruiker.count') do
      post gebruikers_url, params: { gebruiker: { name: @gebruiker.name, slug: @gebruiker.slug } }
    end

    assert_redirected_to gebruiker_url(Gebruiker.last)
  end

  test "should show gebruiker" do
    get gebruiker_url(@gebruiker)
    assert_response :success
  end

  test "should get edit" do
    get edit_gebruiker_url(@gebruiker)
    assert_response :success
  end

  test "should update gebruiker" do
    patch gebruiker_url(@gebruiker), params: { gebruiker: { name: @gebruiker.name, slug: @gebruiker.slug } }
    assert_redirected_to gebruiker_url(@gebruiker)
  end

  test "should destroy gebruiker" do
    assert_difference('Gebruiker.count', -1) do
      delete gebruiker_url(@gebruiker)
    end

    assert_redirected_to gebruikers_url
  end
end
