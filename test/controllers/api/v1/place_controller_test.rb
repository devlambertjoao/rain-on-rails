require 'test_helper'

class Api::V1::PlaceControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get api_v1_place_name_url
    assert_response :success
  end

  test "should get image_url" do
    get api_v1_place_image_url_url
    assert_response :success
  end

end
