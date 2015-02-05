require 'test_helper'

class HwmUserDetailInfosControllerTest < ActionController::TestCase
  setup do
    @hwm_user_detail_info = hwm_user_detail_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hwm_user_detail_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hwm_user_detail_info" do
    assert_difference('HwmUserDetailInfo.count') do
      post :create, hwm_user_detail_info: @hwm_user_detail_info.attributes
    end

    assert_redirected_to hwm_user_detail_info_path(assigns(:hwm_user_detail_info))
  end

  test "should show hwm_user_detail_info" do
    get :show, id: @hwm_user_detail_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hwm_user_detail_info
    assert_response :success
  end

  test "should update hwm_user_detail_info" do
    put :update, id: @hwm_user_detail_info, hwm_user_detail_info: @hwm_user_detail_info.attributes
    assert_redirected_to hwm_user_detail_info_path(assigns(:hwm_user_detail_info))
  end

  test "should destroy hwm_user_detail_info" do
    assert_difference('HwmUserDetailInfo.count', -1) do
      delete :destroy, id: @hwm_user_detail_info
    end

    assert_redirected_to hwm_user_detail_infos_path
  end
end
