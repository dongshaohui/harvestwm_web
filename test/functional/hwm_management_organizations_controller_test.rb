require 'test_helper'

class HwmManagementOrganizationsControllerTest < ActionController::TestCase
  setup do
    @hwm_management_organization = hwm_management_organizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hwm_management_organizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hwm_management_organization" do
    assert_difference('HwmManagementOrganization.count') do
      post :create, hwm_management_organization: @hwm_management_organization.attributes
    end

    assert_redirected_to hwm_management_organization_path(assigns(:hwm_management_organization))
  end

  test "should show hwm_management_organization" do
    get :show, id: @hwm_management_organization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hwm_management_organization
    assert_response :success
  end

  test "should update hwm_management_organization" do
    put :update, id: @hwm_management_organization, hwm_management_organization: @hwm_management_organization.attributes
    assert_redirected_to hwm_management_organization_path(assigns(:hwm_management_organization))
  end

  test "should destroy hwm_management_organization" do
    assert_difference('HwmManagementOrganization.count', -1) do
      delete :destroy, id: @hwm_management_organization
    end

    assert_redirected_to hwm_management_organizations_path
  end
end
