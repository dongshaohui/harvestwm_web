require 'test_helper'

class HwmFundValuesControllerTest < ActionController::TestCase
  setup do
    @hwm_fund_value = hwm_fund_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hwm_fund_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hwm_fund_value" do
    assert_difference('HwmFundValue.count') do
      post :create, hwm_fund_value: @hwm_fund_value.attributes
    end

    assert_redirected_to hwm_fund_value_path(assigns(:hwm_fund_value))
  end

  test "should show hwm_fund_value" do
    get :show, id: @hwm_fund_value
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hwm_fund_value
    assert_response :success
  end

  test "should update hwm_fund_value" do
    put :update, id: @hwm_fund_value, hwm_fund_value: @hwm_fund_value.attributes
    assert_redirected_to hwm_fund_value_path(assigns(:hwm_fund_value))
  end

  test "should destroy hwm_fund_value" do
    assert_difference('HwmFundValue.count', -1) do
      delete :destroy, id: @hwm_fund_value
    end

    assert_redirected_to hwm_fund_values_path
  end
end
