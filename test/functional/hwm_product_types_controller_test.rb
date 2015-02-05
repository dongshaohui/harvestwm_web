require 'test_helper'

class HwmProductTypesControllerTest < ActionController::TestCase
  setup do
    @hwm_product_type = hwm_product_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hwm_product_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hwm_product_type" do
    assert_difference('HwmProductType.count') do
      post :create, hwm_product_type: @hwm_product_type.attributes
    end

    assert_redirected_to hwm_product_type_path(assigns(:hwm_product_type))
  end

  test "should show hwm_product_type" do
    get :show, id: @hwm_product_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hwm_product_type
    assert_response :success
  end

  test "should update hwm_product_type" do
    put :update, id: @hwm_product_type, hwm_product_type: @hwm_product_type.attributes
    assert_redirected_to hwm_product_type_path(assigns(:hwm_product_type))
  end

  test "should destroy hwm_product_type" do
    assert_difference('HwmProductType.count', -1) do
      delete :destroy, id: @hwm_product_type
    end

    assert_redirected_to hwm_product_types_path
  end
end
