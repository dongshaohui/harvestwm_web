require 'test_helper'

class HwmLabelTypesControllerTest < ActionController::TestCase
  setup do
    @hwm_label_type = hwm_label_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hwm_label_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hwm_label_type" do
    assert_difference('HwmLabelType.count') do
      post :create, hwm_label_type: @hwm_label_type.attributes
    end

    assert_redirected_to hwm_label_type_path(assigns(:hwm_label_type))
  end

  test "should show hwm_label_type" do
    get :show, id: @hwm_label_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hwm_label_type
    assert_response :success
  end

  test "should update hwm_label_type" do
    put :update, id: @hwm_label_type, hwm_label_type: @hwm_label_type.attributes
    assert_redirected_to hwm_label_type_path(assigns(:hwm_label_type))
  end

  test "should destroy hwm_label_type" do
    assert_difference('HwmLabelType.count', -1) do
      delete :destroy, id: @hwm_label_type
    end

    assert_redirected_to hwm_label_types_path
  end
end
