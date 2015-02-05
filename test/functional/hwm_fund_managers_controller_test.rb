require 'test_helper'

class HwmFundManagersControllerTest < ActionController::TestCase
  setup do
    @hwm_fund_manager = hwm_fund_managers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hwm_fund_managers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hwm_fund_manager" do
    assert_difference('HwmFundManager.count') do
      post :create, hwm_fund_manager: @hwm_fund_manager.attributes
    end

    assert_redirected_to hwm_fund_manager_path(assigns(:hwm_fund_manager))
  end

  test "should show hwm_fund_manager" do
    get :show, id: @hwm_fund_manager
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hwm_fund_manager
    assert_response :success
  end

  test "should update hwm_fund_manager" do
    put :update, id: @hwm_fund_manager, hwm_fund_manager: @hwm_fund_manager.attributes
    assert_redirected_to hwm_fund_manager_path(assigns(:hwm_fund_manager))
  end

  test "should destroy hwm_fund_manager" do
    assert_difference('HwmFundManager.count', -1) do
      delete :destroy, id: @hwm_fund_manager
    end

    assert_redirected_to hwm_fund_managers_path
  end
end
