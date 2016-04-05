require 'test_helper'

class BankingsControllerTest < ActionController::TestCase
  setup do
    @banking = bankings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bankings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create banking" do
    assert_difference('Banking.count') do
      post :create, banking: { Account_number: @banking.Account_number, bank_branch: @banking.bank_branch, bank_name: @banking.bank_name, branch_code: @banking.branch_code, branch_description: @banking.branch_description, email: @banking.email, other_details: @banking.other_details, swift_code: @banking.swift_code }
    end

    assert_redirected_to banking_path(assigns(:banking))
  end

  test "should show banking" do
    get :show, id: @banking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @banking
    assert_response :success
  end

  test "should update banking" do
    patch :update, id: @banking, banking: { Account_number: @banking.Account_number, bank_branch: @banking.bank_branch, bank_name: @banking.bank_name, branch_code: @banking.branch_code, branch_description: @banking.branch_description, email: @banking.email, other_details: @banking.other_details, swift_code: @banking.swift_code }
    assert_redirected_to banking_path(assigns(:banking))
  end

  test "should destroy banking" do
    assert_difference('Banking.count', -1) do
      delete :destroy, id: @banking
    end

    assert_redirected_to bankings_path
  end
end
