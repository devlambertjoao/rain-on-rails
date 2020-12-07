require "application_system_test_case"

class RainMeasuresTest < ApplicationSystemTestCase
  setup do
    @rain_measure = rain_measures(:one)
  end

  test "visiting the index" do
    visit rain_measures_url
    assert_selector "h1", text: "Rain Measures"
  end

  test "creating a Rain measure" do
    visit rain_measures_url
    click_on "New Rain Measure"

    fill_in "Date", with: @rain_measure.date
    fill_in "Place", with: @rain_measure.place_id
    fill_in "Value", with: @rain_measure.value
    click_on "Create Rain measure"

    assert_text "Rain measure was successfully created"
    click_on "Back"
  end

  test "updating a Rain measure" do
    visit rain_measures_url
    click_on "Edit", match: :first

    fill_in "Date", with: @rain_measure.date
    fill_in "Place", with: @rain_measure.place_id
    fill_in "Value", with: @rain_measure.value
    click_on "Update Rain measure"

    assert_text "Rain measure was successfully updated"
    click_on "Back"
  end

  test "destroying a Rain measure" do
    visit rain_measures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rain measure was successfully destroyed"
  end
end
