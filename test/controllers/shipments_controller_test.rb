require 'test_helper'

class ShipmentsControllerTest < ActionController::TestCase
  setup do
    @shipment = shipments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shipments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shipment" do
    assert_difference('Shipment.count') do
      post :create, shipment: { Quantity: @shipment.Quantity, agent_inv_nos: @shipment.agent_inv_nos, country_of_origin: @shipment.country_of_origin, custom_entry_nos: @shipment.custom_entry_nos, custom_exchange_rate: @shipment.custom_exchange_rate, custom_value: @shipment.custom_value, file_nos: @shipment.file_nos, supplier: @shipment.supplier, supply_nature: @shipment.supply_nature, total_cost_usd: @shipment.total_cost_usd }
    end

    assert_redirected_to shipment_path(assigns(:shipment))
  end

  test "should show shipment" do
    get :show, id: @shipment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shipment
    assert_response :success
  end

  test "should update shipment" do
    patch :update, id: @shipment, shipment: { Quantity: @shipment.Quantity, agent_inv_nos: @shipment.agent_inv_nos, country_of_origin: @shipment.country_of_origin, custom_entry_nos: @shipment.custom_entry_nos, custom_exchange_rate: @shipment.custom_exchange_rate, custom_value: @shipment.custom_value, file_nos: @shipment.file_nos, supplier: @shipment.supplier, supply_nature: @shipment.supply_nature, total_cost_usd: @shipment.total_cost_usd }
    assert_redirected_to shipment_path(assigns(:shipment))
  end

  test "should destroy shipment" do
    assert_difference('Shipment.count', -1) do
      delete :destroy, id: @shipment
    end

    assert_redirected_to shipments_path
  end
end
