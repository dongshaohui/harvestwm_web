require 'test_helper'

class HwmStudiosControllerTest < ActionController::TestCase
  setup do
    @hwm_studio = hwm_studios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hwm_studios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hwm_studio" do
    assert_difference('HwmStudio.count') do
      post :create, hwm_studio: @hwm_studio.attributes
    end

    assert_redirected_to hwm_studio_path(assigns(:hwm_studio))
  end

  test "should show hwm_studio" do
    get :show, id: @hwm_studio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hwm_studio
    assert_response :success
  end

  test "should update hwm_studio" do
    put :update, id: @hwm_studio, hwm_studio: @hwm_studio.attributes
    assert_redirected_to hwm_studio_path(assigns(:hwm_studio))
  end

  test "should destroy hwm_studio" do
    assert_difference('HwmStudio.count', -1) do
      delete :destroy, id: @hwm_studio
    end

    assert_redirected_to hwm_studios_path
  end
end
