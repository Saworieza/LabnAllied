require 'test_helper'

class ProformaInvoicesControllerTest < ActionController::TestCase
  setup do
    @proforma_invoice = proforma_invoices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proforma_invoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proforma_invoice" do
    assert_difference('ProformaInvoice.count') do
      post :create, proforma_invoice: { pfi_date: @proforma_invoice.pfi_date, proforma_invoice_nos: @proforma_invoice.proforma_invoice_nos, supplier_name: @proforma_invoice.supplier_name }
    end

    assert_redirected_to proforma_invoice_path(assigns(:proforma_invoice))
  end

  test "should show proforma_invoice" do
    get :show, id: @proforma_invoice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proforma_invoice
    assert_response :success
  end

  test "should update proforma_invoice" do
    patch :update, id: @proforma_invoice, proforma_invoice: { pfi_date: @proforma_invoice.pfi_date, proforma_invoice_nos: @proforma_invoice.proforma_invoice_nos, supplier_name: @proforma_invoice.supplier_name }
    assert_redirected_to proforma_invoice_path(assigns(:proforma_invoice))
  end

  test "should destroy proforma_invoice" do
    assert_difference('ProformaInvoice.count', -1) do
      delete :destroy, id: @proforma_invoice
    end

    assert_redirected_to proforma_invoices_path
  end
end
