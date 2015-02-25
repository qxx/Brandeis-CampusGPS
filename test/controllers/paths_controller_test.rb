require 'test_helper'

class PathsControllerTest < ActionController::TestCase
  setup do
    @path = paths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create path" do
    assert_difference('Path.count') do
      post :create, path: { PathPhotos_id: @path.PathPhotos_id, description: @path.description, direction: @path.direction, distance: @path.distance, end_Location_id: @path.end_Location_id, start_Location_id: @path.start_Location_id }
    end

    assert_redirected_to path_path(assigns(:path))
  end

  test "should show path" do
    get :show, id: @path
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @path
    assert_response :success
  end

  test "should update path" do
    patch :update, id: @path, path: { PathPhotos_id: @path.PathPhotos_id, description: @path.description, direction: @path.direction, distance: @path.distance, end_Location_id: @path.end_Location_id, start_Location_id: @path.start_Location_id }
    assert_redirected_to path_path(assigns(:path))
  end

  test "should destroy path" do
    assert_difference('Path.count', -1) do
      delete :destroy, id: @path
    end

    assert_redirected_to paths_path
  end
end
