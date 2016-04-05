require 'test_helper'

class CompanySetupsControllerTest < ActionController::TestCase
  setup do
    @company_setup = company_setups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:company_setups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company_setup" do
    assert_difference('CompanySetup.count') do
      post :create, company_setup: { company_address: @company_setup.company_address, company_description: @company_setup.company_description, company_name: @company_setup.company_name }
    end

    assert_redirected_to company_setup_path(assigns(:company_setup))
  end

  test "should show company_setup" do
    get :show, id: @company_setup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company_setup
    assert_response :success
  end

  test "should update company_setup" do
    patch :update, id: @company_setup, company_setup: { company_address: @company_setup.company_address, company_description: @company_setup.company_description, company_name: @company_setup.company_name }
    assert_redirected_to company_setup_path(assigns(:company_setup))
  end

  test "should destroy company_setup" do
    assert_difference('CompanySetup.count', -1) do
      delete :destroy, id: @company_setup
    end

    assert_redirected_to company_setups_path
  end
end
