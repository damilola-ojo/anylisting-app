require "test_helper"

class ListingsControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get listings_name_url
    assert_response :success
  end
end
