require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { lots: @order.lots, price: @order.price, product: @order.product, quantity: @order.quantity, rate: @order.rate, total_bank_charges: @order.total_bank_charges, total_freight_usd: @order.total_freight_usd, total_idf_bal: @order.total_idf_bal, total_insurance_Kes: @order.total_insurance_Kes, total_kaa_levy: @order.total_kaa_levy, total_offloading_expenses: @order.total_offloading_expenses, total_other_costs: @order.total_other_costs, total_port_handling_charges: @order.total_port_handling_charges, total_pre_idf: @order.total_pre_idf, total_railway_levy: @order.total_railway_levy, total_services_charges: @order.total_services_charges, total_shipping_line_charges: @order.total_shipping_line_charges, total_transport_from_msa: @order.total_transport_from_msa }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { lots: @order.lots, price: @order.price, product: @order.product, quantity: @order.quantity, rate: @order.rate, total_bank_charges: @order.total_bank_charges, total_freight_usd: @order.total_freight_usd, total_idf_bal: @order.total_idf_bal, total_insurance_Kes: @order.total_insurance_Kes, total_kaa_levy: @order.total_kaa_levy, total_offloading_expenses: @order.total_offloading_expenses, total_other_costs: @order.total_other_costs, total_port_handling_charges: @order.total_port_handling_charges, total_pre_idf: @order.total_pre_idf, total_railway_levy: @order.total_railway_levy, total_services_charges: @order.total_services_charges, total_shipping_line_charges: @order.total_shipping_line_charges, total_transport_from_msa: @order.total_transport_from_msa }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
