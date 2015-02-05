require 'test_helper'

class HwmCommentsControllerTest < ActionController::TestCase
  setup do
    @hwm_comment = hwm_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hwm_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hwm_comment" do
    assert_difference('HwmComment.count') do
      post :create, hwm_comment: @hwm_comment.attributes
    end

    assert_redirected_to hwm_comment_path(assigns(:hwm_comment))
  end

  test "should show hwm_comment" do
    get :show, id: @hwm_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hwm_comment
    assert_response :success
  end

  test "should update hwm_comment" do
    put :update, id: @hwm_comment, hwm_comment: @hwm_comment.attributes
    assert_redirected_to hwm_comment_path(assigns(:hwm_comment))
  end

  test "should destroy hwm_comment" do
    assert_difference('HwmComment.count', -1) do
      delete :destroy, id: @hwm_comment
    end

    assert_redirected_to hwm_comments_path
  end
end
