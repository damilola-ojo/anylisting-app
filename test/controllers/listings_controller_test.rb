require "test_helper"

class ListingsControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get listings_url
    assert_response :success
  end

  test "should get new" do
    get new_listing_url
    assert_response :success
  end

  test "should get edit" do
    get edit_listing_url(Listing.first)
    assert_response :success
  end

  test "should get show" do
    get listing_url(Listing.first)
    assert_response :success
  end
end
