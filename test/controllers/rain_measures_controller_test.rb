require 'test_helper'

class RainMeasuresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rain_measure = rain_measures(:one)
  end

  test "should get index" do
    get rain_measures_url
    assert_response :success
  end

  test "should get new" do
    get new_rain_measure_url
    assert_response :success
  end

  test "should create rain_measure" do
    assert_difference('RainMeasure.count') do
      post rain_measures_url, params: { rain_measure: { date: @rain_measure.date, place_id: @rain_measure.place_id, value: @rain_measure.value } }
    end

    assert_redirected_to rain_measure_url(RainMeasure.last)
  end

  test "should show rain_measure" do
    get rain_measure_url(@rain_measure)
    assert_response :success
  end

  test "should get edit" do
    get edit_rain_measure_url(@rain_measure)
    assert_response :success
  end

  test "should update rain_measure" do
    patch rain_measure_url(@rain_measure), params: { rain_measure: { date: @rain_measure.date, place_id: @rain_measure.place_id, value: @rain_measure.value } }
    assert_redirected_to rain_measure_url(@rain_measure)
  end

  test "should destroy rain_measure" do
    assert_difference('RainMeasure.count', -1) do
      delete rain_measure_url(@rain_measure)
    end

    assert_redirected_to rain_measures_url
  end
end
