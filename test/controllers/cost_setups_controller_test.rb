require 'test_helper'

class CostSetupsControllerTest < ActionController::TestCase
  setup do
    @cost_setup = cost_setups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cost_setups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cost_setup" do
    assert_difference('CostSetup.count') do
      post :create, cost_setup: { cost_code: @cost_setup.cost_code, cost_type: @cost_setup.cost_type, cost_type_setup: @cost_setup.cost_type_setup, currency: @cost_setup.currency, currency_rate: @cost_setup.currency_rate }
    end

    assert_redirected_to cost_setup_path(assigns(:cost_setup))
  end

  test "should show cost_setup" do
    get :show, id: @cost_setup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cost_setup
    assert_response :success
  end

  test "should update cost_setup" do
    patch :update, id: @cost_setup, cost_setup: { cost_code: @cost_setup.cost_code, cost_type: @cost_setup.cost_type, cost_type_setup: @cost_setup.cost_type_setup, currency: @cost_setup.currency, currency_rate: @cost_setup.currency_rate }
    assert_redirected_to cost_setup_path(assigns(:cost_setup))
  end

  test "should destroy cost_setup" do
    assert_difference('CostSetup.count', -1) do
      delete :destroy, id: @cost_setup
    end

    assert_redirected_to cost_setups_path
  end
end
