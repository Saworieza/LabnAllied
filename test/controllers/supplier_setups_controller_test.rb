require 'test_helper'

class SupplierSetupsControllerTest < ActionController::TestCase
  setup do
    @supplier_setup = supplier_setups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supplier_setups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supplier_setup" do
    assert_difference('SupplierSetup.count') do
      post :create, supplier_setup: { address: @supplier_setup.address, banking_details: @supplier_setup.banking_details, bus_clasification: @supplier_setup.bus_clasification, bus_type: @supplier_setup.bus_type, bus_type: @supplier_setup.bus_type, country_id: @supplier_setup.country_id, country_name: @supplier_setup.country_name, description: @supplier_setup.description, notes: @supplier_setup.notes, supplier_name: @supplier_setup.supplier_name }
    end

    assert_redirected_to supplier_setup_path(assigns(:supplier_setup))
  end

  test "should show supplier_setup" do
    get :show, id: @supplier_setup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supplier_setup
    assert_response :success
  end

  test "should update supplier_setup" do
    patch :update, id: @supplier_setup, supplier_setup: { address: @supplier_setup.address, banking_details: @supplier_setup.banking_details, bus_clasification: @supplier_setup.bus_clasification, bus_type: @supplier_setup.bus_type, bus_type: @supplier_setup.bus_type, country_id: @supplier_setup.country_id, country_name: @supplier_setup.country_name, description: @supplier_setup.description, notes: @supplier_setup.notes, supplier_name: @supplier_setup.supplier_name }
    assert_redirected_to supplier_setup_path(assigns(:supplier_setup))
  end

  test "should destroy supplier_setup" do
    assert_difference('SupplierSetup.count', -1) do
      delete :destroy, id: @supplier_setup
    end

    assert_redirected_to supplier_setups_path
  end
end
