require 'test_helper'

class HwmLabelsControllerTest < ActionController::TestCase
  setup do
    @hwm_label = hwm_labels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hwm_labels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hwm_label" do
    assert_difference('HwmLabel.count') do
      post :create, hwm_label: @hwm_label.attributes
    end

    assert_redirected_to hwm_label_path(assigns(:hwm_label))
  end

  test "should show hwm_label" do
    get :show, id: @hwm_label
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hwm_label
    assert_response :success
  end

  test "should update hwm_label" do
    put :update, id: @hwm_label, hwm_label: @hwm_label.attributes
    assert_redirected_to hwm_label_path(assigns(:hwm_label))
  end

  test "should destroy hwm_label" do
    assert_difference('HwmLabel.count', -1) do
      delete :destroy, id: @hwm_label
    end

    assert_redirected_to hwm_labels_path
  end
end
