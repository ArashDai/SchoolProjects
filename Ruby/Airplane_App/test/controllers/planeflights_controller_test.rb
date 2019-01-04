require 'test_helper'

class PlaneflightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planeflight = planeflights(:one)
  end

  test "should get index" do
    get planeflights_url
    assert_response :success
  end

  test "should get new" do
    get new_planeflight_url
    assert_response :success
  end

  test "should create planeflight" do
    assert_difference('Planeflight.count') do
      post planeflights_url, params: { planeflight: { airline: @planeflight.airline, fromcity: @planeflight.fromcity, number: @planeflight.number, plane_id_id: @planeflight.plane_id_id, tocity: @planeflight.tocity } }
    end

    assert_redirected_to planeflight_url(Planeflight.last)
  end

  test "should show planeflight" do
    get planeflight_url(@planeflight)
    assert_response :success
  end

  test "should get edit" do
    get edit_planeflight_url(@planeflight)
    assert_response :success
  end

  test "should update planeflight" do
    patch planeflight_url(@planeflight), params: { planeflight: { airline: @planeflight.airline, fromcity: @planeflight.fromcity, number: @planeflight.number, plane_id_id: @planeflight.plane_id_id, tocity: @planeflight.tocity } }
    assert_redirected_to planeflight_url(@planeflight)
  end

  test "should destroy planeflight" do
    assert_difference('Planeflight.count', -1) do
      delete planeflight_url(@planeflight)
    end

    assert_redirected_to planeflights_url
  end
end
