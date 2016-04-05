require 'test_helper'

class CustomsServiceDepartmentsControllerTest < ActionController::TestCase
  setup do
    @customs_service_department = customs_service_departments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customs_service_departments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customs_service_department" do
    assert_difference('CustomsServiceDepartment.count') do
      post :create, customs_service_department: { idf_form_nos: @customs_service_department.idf_form_nos, payment_date: @customs_service_department.payment_date, rate: @customs_service_department.rate }
    end

    assert_redirected_to customs_service_department_path(assigns(:customs_service_department))
  end

  test "should show customs_service_department" do
    get :show, id: @customs_service_department
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customs_service_department
    assert_response :success
  end

  test "should update customs_service_department" do
    patch :update, id: @customs_service_department, customs_service_department: { idf_form_nos: @customs_service_department.idf_form_nos, payment_date: @customs_service_department.payment_date, rate: @customs_service_department.rate }
    assert_redirected_to customs_service_department_path(assigns(:customs_service_department))
  end

  test "should destroy customs_service_department" do
    assert_difference('CustomsServiceDepartment.count', -1) do
      delete :destroy, id: @customs_service_department
    end

    assert_redirected_to customs_service_departments_path
  end
end
