require 'test_helper'

class HwmResourceLinksControllerTest < ActionController::TestCase
  setup do
    @hwm_resource_link = hwm_resource_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hwm_resource_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hwm_resource_link" do
    assert_difference('HwmResourceLink.count') do
      post :create, hwm_resource_link: @hwm_resource_link.attributes
    end

    assert_redirected_to hwm_resource_link_path(assigns(:hwm_resource_link))
  end

  test "should show hwm_resource_link" do
    get :show, id: @hwm_resource_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hwm_resource_link
    assert_response :success
  end

  test "should update hwm_resource_link" do
    put :update, id: @hwm_resource_link, hwm_resource_link: @hwm_resource_link.attributes
    assert_redirected_to hwm_resource_link_path(assigns(:hwm_resource_link))
  end

  test "should destroy hwm_resource_link" do
    assert_difference('HwmResourceLink.count', -1) do
      delete :destroy, id: @hwm_resource_link
    end

    assert_redirected_to hwm_resource_links_path
  end
end
