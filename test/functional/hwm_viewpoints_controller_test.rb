require 'test_helper'

class HwmViewpointsControllerTest < ActionController::TestCase
  setup do
    @hwm_viewpoint = hwm_viewpoints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hwm_viewpoints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hwm_viewpoint" do
    assert_difference('HwmViewpoint.count') do
      post :create, hwm_viewpoint: @hwm_viewpoint.attributes
    end

    assert_redirected_to hwm_viewpoint_path(assigns(:hwm_viewpoint))
  end

  test "should show hwm_viewpoint" do
    get :show, id: @hwm_viewpoint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hwm_viewpoint
    assert_response :success
  end

  test "should update hwm_viewpoint" do
    put :update, id: @hwm_viewpoint, hwm_viewpoint: @hwm_viewpoint.attributes
    assert_redirected_to hwm_viewpoint_path(assigns(:hwm_viewpoint))
  end

  test "should destroy hwm_viewpoint" do
    assert_difference('HwmViewpoint.count', -1) do
      delete :destroy, id: @hwm_viewpoint
    end

    assert_redirected_to hwm_viewpoints_path
  end
end
