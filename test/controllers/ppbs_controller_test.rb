require 'test_helper'

class PpbsControllerTest < ActionController::TestCase
  setup do
    @ppb = ppbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ppbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ppb" do
    assert_difference('Ppb.count') do
      post :create, ppb: { UCR_Number: @ppb.UCR_Number, application_date: @ppb.application_date }
    end

    assert_redirected_to ppb_path(assigns(:ppb))
  end

  test "should show ppb" do
    get :show, id: @ppb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ppb
    assert_response :success
  end

  test "should update ppb" do
    patch :update, id: @ppb, ppb: { UCR_Number: @ppb.UCR_Number, application_date: @ppb.application_date }
    assert_redirected_to ppb_path(assigns(:ppb))
  end

  test "should destroy ppb" do
    assert_difference('Ppb.count', -1) do
      delete :destroy, id: @ppb
    end

    assert_redirected_to ppbs_path
  end
end
