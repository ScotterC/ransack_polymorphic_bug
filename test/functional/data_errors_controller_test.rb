require 'test_helper'

class DataErrorsControllerTest < ActionController::TestCase
  setup do
    @data_error = data_errors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_errors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_error" do
    assert_difference('DataError.count') do
      post :create, data_error: { references: @data_error.references }
    end

    assert_redirected_to data_error_path(assigns(:data_error))
  end

  test "should show data_error" do
    get :show, id: @data_error
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_error
    assert_response :success
  end

  test "should update data_error" do
    put :update, id: @data_error, data_error: { references: @data_error.references }
    assert_redirected_to data_error_path(assigns(:data_error))
  end

  test "should destroy data_error" do
    assert_difference('DataError.count', -1) do
      delete :destroy, id: @data_error
    end

    assert_redirected_to data_errors_path
  end
end
