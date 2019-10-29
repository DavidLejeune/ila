require 'test_helper'

class SculpturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sculpture = sculptures(:one)
  end

  test "should get index" do
    get sculptures_url
    assert_response :success
  end

  test "should get new" do
    get new_sculpture_url
    assert_response :success
  end

  test "should create sculpture" do
    assert_difference('Sculpture.count') do
      post sculptures_url, params: { sculpture: { copyright: @sculpture.copyright, credit: @sculpture.credit, description: @sculpture.description, title: @sculpture.title } }
    end

    assert_redirected_to sculpture_url(Sculpture.last)
  end

  test "should show sculpture" do
    get sculpture_url(@sculpture)
    assert_response :success
  end

  test "should get edit" do
    get edit_sculpture_url(@sculpture)
    assert_response :success
  end

  test "should update sculpture" do
    patch sculpture_url(@sculpture), params: { sculpture: { copyright: @sculpture.copyright, credit: @sculpture.credit, description: @sculpture.description, title: @sculpture.title } }
    assert_redirected_to sculpture_url(@sculpture)
  end

  test "should destroy sculpture" do
    assert_difference('Sculpture.count', -1) do
      delete sculpture_url(@sculpture)
    end

    assert_redirected_to sculptures_url
  end
end
