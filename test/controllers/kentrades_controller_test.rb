require 'test_helper'

class KentradesControllerTest < ActionController::TestCase
  setup do
    @kentrade = kentrades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kentrades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kentrade" do
    assert_difference('Kentrade.count') do
      post :create, kentrade: { idf_document_fee: @kentrade.idf_document_fee, payment_date: @kentrade.payment_date }
    end

    assert_redirected_to kentrade_path(assigns(:kentrade))
  end

  test "should show kentrade" do
    get :show, id: @kentrade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kentrade
    assert_response :success
  end

  test "should update kentrade" do
    patch :update, id: @kentrade, kentrade: { idf_document_fee: @kentrade.idf_document_fee, payment_date: @kentrade.payment_date }
    assert_redirected_to kentrade_path(assigns(:kentrade))
  end

  test "should destroy kentrade" do
    assert_difference('Kentrade.count', -1) do
      delete :destroy, id: @kentrade
    end

    assert_redirected_to kentrades_path
  end
end
