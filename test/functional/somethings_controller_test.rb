require 'test_helper'

class SomethingsControllerTest < ActionController::TestCase
  setup do
    @something = somethings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:somethings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create something" do
    assert_difference('Something.count') do
      post :create, something: @something.attributes
    end

    assert_redirected_to something_path(assigns(:something))
  end

  test "should show something" do
    get :show, id: @something
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @something
    assert_response :success
  end

  test "should update something" do
    put :update, id: @something, something: @something.attributes
    assert_redirected_to something_path(assigns(:something))
  end

  test "should destroy something" do
    assert_difference('Something.count', -1) do
      delete :destroy, id: @something
    end

    assert_redirected_to somethings_path
  end
end
