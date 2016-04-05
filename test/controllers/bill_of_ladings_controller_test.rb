require 'test_helper'

class BillOfLadingsControllerTest < ActionController::TestCase
  setup do
    @bill_of_lading = bill_of_ladings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bill_of_ladings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bill_of_lading" do
    assert_difference('BillOfLading.count') do
      post :create, bill_of_lading: { bl_date: @bill_of_lading.bl_date, bl_number: @bill_of_lading.bl_number }
    end

    assert_redirected_to bill_of_lading_path(assigns(:bill_of_lading))
  end

  test "should show bill_of_lading" do
    get :show, id: @bill_of_lading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bill_of_lading
    assert_response :success
  end

  test "should update bill_of_lading" do
    patch :update, id: @bill_of_lading, bill_of_lading: { bl_date: @bill_of_lading.bl_date, bl_number: @bill_of_lading.bl_number }
    assert_redirected_to bill_of_lading_path(assigns(:bill_of_lading))
  end

  test "should destroy bill_of_lading" do
    assert_difference('BillOfLading.count', -1) do
      delete :destroy, id: @bill_of_lading
    end

    assert_redirected_to bill_of_ladings_path
  end
end
