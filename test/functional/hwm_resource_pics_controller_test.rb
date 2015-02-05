require 'test_helper'

class HwmResourcePicsControllerTest < ActionController::TestCase
  setup do
    @hwm_resource_pic = hwm_resource_pics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hwm_resource_pics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hwm_resource_pic" do
    assert_difference('HwmResourcePic.count') do
      post :create, hwm_resource_pic: @hwm_resource_pic.attributes
    end

    assert_redirected_to hwm_resource_pic_path(assigns(:hwm_resource_pic))
  end

  test "should show hwm_resource_pic" do
    get :show, id: @hwm_resource_pic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hwm_resource_pic
    assert_response :success
  end

  test "should update hwm_resource_pic" do
    put :update, id: @hwm_resource_pic, hwm_resource_pic: @hwm_resource_pic.attributes
    assert_redirected_to hwm_resource_pic_path(assigns(:hwm_resource_pic))
  end

  test "should destroy hwm_resource_pic" do
    assert_difference('HwmResourcePic.count', -1) do
      delete :destroy, id: @hwm_resource_pic
    end

    assert_redirected_to hwm_resource_pics_path
  end
end
