require 'test_helper'

class CvsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cvs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cv" do
    assert_difference('Cv.count') do
      post :create, :cv => { }
    end

    assert_redirected_to cv_path(assigns(:cv))
  end

  test "should show cv" do
    get :show, :id => cvs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => cvs(:one).to_param
    assert_response :success
  end

  test "should update cv" do
    put :update, :id => cvs(:one).to_param, :cv => { }
    assert_redirected_to cv_path(assigns(:cv))
  end

  test "should destroy cv" do
    assert_difference('Cv.count', -1) do
      delete :destroy, :id => cvs(:one).to_param
    end

    assert_redirected_to cvs_path
  end
end
