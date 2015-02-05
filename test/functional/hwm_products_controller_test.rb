require 'test_helper'

class HwmProductsControllerTest < ActionController::TestCase
  setup do
    @hwm_product = hwm_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hwm_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hwm_product" do
    assert_difference('HwmProduct.count') do
      post :create, hwm_product: @hwm_product.attributes
    end

    assert_redirected_to hwm_product_path(assigns(:hwm_product))
  end

  test "should show hwm_product" do
    get :show, id: @hwm_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hwm_product
    assert_response :success
  end

  test "should update hwm_product" do
    put :update, id: @hwm_product, hwm_product: @hwm_product.attributes
    assert_redirected_to hwm_product_path(assigns(:hwm_product))
  end

  test "should destroy hwm_product" do
    assert_difference('HwmProduct.count', -1) do
      delete :destroy, id: @hwm_product
    end

    assert_redirected_to hwm_products_path
  end
end
