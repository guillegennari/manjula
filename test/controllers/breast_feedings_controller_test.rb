require 'test_helper'

class BreastFeedingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @breast_feeding = breast_feedings(:one)
  end

  test "should get index" do
    get breast_feedings_url
    assert_response :success
  end

  test "should get new" do
    get new_breast_feeding_url
    assert_response :success
  end

  test "should create breast_feeding" do
    assert_difference('BreastFeeding.count') do
      post breast_feedings_url, params: { breast_feeding: { baby_id: @breast_feeding.baby_id, duration: @breast_feeding.duration, quantity: @breast_feeding.quantity } }
    end

    assert_redirected_to breast_feeding_url(BreastFeeding.last)
  end

  test "should show breast_feeding" do
    get breast_feeding_url(@breast_feeding)
    assert_response :success
  end

  test "should get edit" do
    get edit_breast_feeding_url(@breast_feeding)
    assert_response :success
  end

  test "should update breast_feeding" do
    patch breast_feeding_url(@breast_feeding), params: { breast_feeding: { baby_id: @breast_feeding.baby_id, duration: @breast_feeding.duration, quantity: @breast_feeding.quantity } }
    assert_redirected_to breast_feeding_url(@breast_feeding)
  end

  test "should destroy breast_feeding" do
    assert_difference('BreastFeeding.count', -1) do
      delete breast_feeding_url(@breast_feeding)
    end

    assert_redirected_to breast_feedings_url
  end
end
