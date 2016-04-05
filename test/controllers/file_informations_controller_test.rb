require 'test_helper'

class FileInformationsControllerTest < ActionController::TestCase
  setup do
    @file_information = file_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:file_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create file_information" do
    assert_difference('FileInformation.count') do
      post :create, file_information: { file_number: @file_information.file_number, idf_date: @file_information.idf_date }
    end

    assert_redirected_to file_information_path(assigns(:file_information))
  end

  test "should show file_information" do
    get :show, id: @file_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @file_information
    assert_response :success
  end

  test "should update file_information" do
    patch :update, id: @file_information, file_information: { file_number: @file_information.file_number, idf_date: @file_information.idf_date }
    assert_redirected_to file_information_path(assigns(:file_information))
  end

  test "should destroy file_information" do
    assert_difference('FileInformation.count', -1) do
      delete :destroy, id: @file_information
    end

    assert_redirected_to file_informations_path
  end
end
