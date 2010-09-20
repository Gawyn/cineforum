require 'test_helper'

class EnquestasControllerTest < ActionController::TestCase
  setup do
    @enquesta = enquestas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enquestas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enquesta" do
    assert_difference('Enquesta.count') do
      post :create, :enquesta => @enquesta.attributes
    end

    assert_redirected_to enquesta_path(assigns(:enquesta))
  end

  test "should show enquesta" do
    get :show, :id => @enquesta.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @enquesta.to_param
    assert_response :success
  end

  test "should update enquesta" do
    put :update, :id => @enquesta.to_param, :enquesta => @enquesta.attributes
    assert_redirected_to enquesta_path(assigns(:enquesta))
  end

  test "should destroy enquesta" do
    assert_difference('Enquesta.count', -1) do
      delete :destroy, :id => @enquesta.to_param
    end

    assert_redirected_to enquestas_path
  end
end
