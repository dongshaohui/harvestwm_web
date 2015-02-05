require 'test_helper'

class HwmFundTypesControllerTest < ActionController::TestCase
  setup do
    @hwm_fund_type = hwm_fund_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hwm_fund_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hwm_fund_type" do
    assert_difference('HwmFundType.count') do
      post :create, hwm_fund_type: @hwm_fund_type.attributes
    end

    assert_redirected_to hwm_fund_type_path(assigns(:hwm_fund_type))
  end

  test "should show hwm_fund_type" do
    get :show, id: @hwm_fund_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hwm_fund_type
    assert_response :success
  end

  test "should update hwm_fund_type" do
    put :update, id: @hwm_fund_type, hwm_fund_type: @hwm_fund_type.attributes
    assert_redirected_to hwm_fund_type_path(assigns(:hwm_fund_type))
  end

  test "should destroy hwm_fund_type" do
    assert_difference('HwmFundType.count', -1) do
      delete :destroy, id: @hwm_fund_type
    end

    assert_redirected_to hwm_fund_types_path
  end
end
