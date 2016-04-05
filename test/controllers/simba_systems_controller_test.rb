require 'test_helper'

class SimbaSystemsControllerTest < ActionController::TestCase
  setup do
    @simba_system = simba_systems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:simba_systems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create simba_system" do
    assert_difference('SimbaSystem.count') do
      post :create, simba_system: { customs_entry_date: @simba_system.customs_entry_date, customs_entry_number: @simba_system.customs_entry_number, documents_handling_charges: @simba_system.documents_handling_charges, exchange_rate: @simba_system.exchange_rate, total_bank_charges: @simba_system.total_bank_charges, total_freight_usd: @simba_system.total_freight_usd, total_insurance_Kes: @simba_system.total_insurance_Kes, total_kaa_levy: @simba_system.total_kaa_levy, total_offloading_expenses: @simba_system.total_offloading_expenses, total_other_costs: @simba_system.total_other_costs, total_port_handling_charges: @simba_system.total_port_handling_charges, total_pre_idf: @simba_system.total_pre_idf, total_railway_levy: @simba_system.total_railway_levy, total_services_charges: @simba_system.total_services_charges, total_shipping_line_charges: @simba_system.total_shipping_line_charges, total_transport_from_msa: @simba_system.total_transport_from_msa }
    end

    assert_redirected_to simba_system_path(assigns(:simba_system))
  end

  test "should show simba_system" do
    get :show, id: @simba_system
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @simba_system
    assert_response :success
  end

  test "should update simba_system" do
    patch :update, id: @simba_system, simba_system: { customs_entry_date: @simba_system.customs_entry_date, customs_entry_number: @simba_system.customs_entry_number, documents_handling_charges: @simba_system.documents_handling_charges, exchange_rate: @simba_system.exchange_rate, total_bank_charges: @simba_system.total_bank_charges, total_freight_usd: @simba_system.total_freight_usd, total_insurance_Kes: @simba_system.total_insurance_Kes, total_kaa_levy: @simba_system.total_kaa_levy, total_offloading_expenses: @simba_system.total_offloading_expenses, total_other_costs: @simba_system.total_other_costs, total_port_handling_charges: @simba_system.total_port_handling_charges, total_pre_idf: @simba_system.total_pre_idf, total_railway_levy: @simba_system.total_railway_levy, total_services_charges: @simba_system.total_services_charges, total_shipping_line_charges: @simba_system.total_shipping_line_charges, total_transport_from_msa: @simba_system.total_transport_from_msa }
    assert_redirected_to simba_system_path(assigns(:simba_system))
  end

  test "should destroy simba_system" do
    assert_difference('SimbaSystem.count', -1) do
      delete :destroy, id: @simba_system
    end

    assert_redirected_to simba_systems_path
  end
end
