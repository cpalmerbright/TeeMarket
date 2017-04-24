require 'test_helper'

class WholesalersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wholesaler = wholesalers(:one)
  end

  test "should get index" do
    get wholesalers_url
    assert_response :success
  end

  test "should get new" do
    get new_wholesaler_url
    assert_response :success
  end

  test "should create wholesaler" do
    assert_difference('Wholesaler.count') do
      post wholesalers_url, params: { wholesaler: { name: @wholesaler.name } }
    end

    assert_redirected_to wholesaler_url(Wholesaler.last)
  end

  test "should show wholesaler" do
    get wholesaler_url(@wholesaler)
    assert_response :success
  end

  test "should get edit" do
    get edit_wholesaler_url(@wholesaler)
    assert_response :success
  end

  test "should update wholesaler" do
    patch wholesaler_url(@wholesaler), params: { wholesaler: { name: @wholesaler.name } }
    assert_redirected_to wholesaler_url(@wholesaler)
  end

  test "should destroy wholesaler" do
    assert_difference('Wholesaler.count', -1) do
      delete wholesaler_url(@wholesaler)
    end

    assert_redirected_to wholesalers_url
  end
end
