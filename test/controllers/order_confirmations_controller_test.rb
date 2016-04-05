require 'test_helper'

class OrderConfirmationsControllerTest < ActionController::TestCase
  setup do
    @order_confirmation = order_confirmations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_confirmations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_confirmation" do
    assert_difference('OrderConfirmation.count') do
      post :create, order_confirmation: { HScode_No: @order_confirmation.HScode_No, IDF_No: @order_confirmation.IDF_No, buyers_bankers: @order_confirmation.buyers_bankers, code: @order_confirmation.code, container_type: @order_confirmation.container_type, country_of_inspection: @order_confirmation.country_of_inspection, country_of_origin: @order_confirmation.country_of_origin, country_of_supply: @order_confirmation.country_of_supply, final_destination: @order_confirmation.final_destination, inspection_agency: @order_confirmation.inspection_agency, insurance_to_be: @order_confirmation.insurance_to_be, item_description: @order_confirmation.item_description, mode_of_transport: @order_confirmation.mode_of_transport, p.order_No: @order_confirmation.p.order_No, port_of_discharge: @order_confirmation.port_of_discharge, port_of_loading: @order_confirmation.port_of_loading, proforma_nos: @order_confirmation.proforma_nos, quantity: @order_confirmation.quantity, sellers: @order_confirmation.sellers, sellers_bankers: @order_confirmation.sellers_bankers, shipment_date: @order_confirmation.shipment_date, shipping_marks_order_nos: @order_confirmation.shipping_marks_order_nos, supplier_item_description: @order_confirmation.supplier_item_description, terms_of_payment: @order_confirmation.terms_of_payment, total_amount_decimal: @order_confirmation.total_amount_decimal, unit_price: @order_confirmation.unit_price }
    end

    assert_redirected_to order_confirmation_path(assigns(:order_confirmation))
  end

  test "should show order_confirmation" do
    get :show, id: @order_confirmation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_confirmation
    assert_response :success
  end

  test "should update order_confirmation" do
    patch :update, id: @order_confirmation, order_confirmation: { HScode_No: @order_confirmation.HScode_No, IDF_No: @order_confirmation.IDF_No, buyers_bankers: @order_confirmation.buyers_bankers, code: @order_confirmation.code, container_type: @order_confirmation.container_type, country_of_inspection: @order_confirmation.country_of_inspection, country_of_origin: @order_confirmation.country_of_origin, country_of_supply: @order_confirmation.country_of_supply, final_destination: @order_confirmation.final_destination, inspection_agency: @order_confirmation.inspection_agency, insurance_to_be: @order_confirmation.insurance_to_be, item_description: @order_confirmation.item_description, mode_of_transport: @order_confirmation.mode_of_transport, p.order_No: @order_confirmation.p.order_No, port_of_discharge: @order_confirmation.port_of_discharge, port_of_loading: @order_confirmation.port_of_loading, proforma_nos: @order_confirmation.proforma_nos, quantity: @order_confirmation.quantity, sellers: @order_confirmation.sellers, sellers_bankers: @order_confirmation.sellers_bankers, shipment_date: @order_confirmation.shipment_date, shipping_marks_order_nos: @order_confirmation.shipping_marks_order_nos, supplier_item_description: @order_confirmation.supplier_item_description, terms_of_payment: @order_confirmation.terms_of_payment, total_amount_decimal: @order_confirmation.total_amount_decimal, unit_price: @order_confirmation.unit_price }
    assert_redirected_to order_confirmation_path(assigns(:order_confirmation))
  end

  test "should destroy order_confirmation" do
    assert_difference('OrderConfirmation.count', -1) do
      delete :destroy, id: @order_confirmation
    end

    assert_redirected_to order_confirmations_path
  end
end
