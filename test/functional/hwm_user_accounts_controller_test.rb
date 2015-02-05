require 'test_helper'

class HwmUserAccountsControllerTest < ActionController::TestCase
  setup do
    @hwm_user_account = hwm_user_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hwm_user_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hwm_user_account" do
    assert_difference('HwmUserAccount.count') do
      post :create, hwm_user_account: @hwm_user_account.attributes
    end

    assert_redirected_to hwm_user_account_path(assigns(:hwm_user_account))
  end

  test "should show hwm_user_account" do
    get :show, id: @hwm_user_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hwm_user_account
    assert_response :success
  end

  test "should update hwm_user_account" do
    put :update, id: @hwm_user_account, hwm_user_account: @hwm_user_account.attributes
    assert_redirected_to hwm_user_account_path(assigns(:hwm_user_account))
  end

  test "should destroy hwm_user_account" do
    assert_difference('HwmUserAccount.count', -1) do
      delete :destroy, id: @hwm_user_account
    end

    assert_redirected_to hwm_user_accounts_path
  end
end
