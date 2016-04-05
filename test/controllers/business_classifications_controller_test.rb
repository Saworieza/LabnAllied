require 'test_helper'

class BusinessClassificationsControllerTest < ActionController::TestCase
  setup do
    @business_classification = business_classifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_classifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_classification" do
    assert_difference('BusinessClassification.count') do
      post :create, business_classification: { business_classification: @business_classification.business_classification }
    end

    assert_redirected_to business_classification_path(assigns(:business_classification))
  end

  test "should show business_classification" do
    get :show, id: @business_classification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_classification
    assert_response :success
  end

  test "should update business_classification" do
    patch :update, id: @business_classification, business_classification: { business_classification: @business_classification.business_classification }
    assert_redirected_to business_classification_path(assigns(:business_classification))
  end

  test "should destroy business_classification" do
    assert_difference('BusinessClassification.count', -1) do
      delete :destroy, id: @business_classification
    end

    assert_redirected_to business_classifications_path
  end
end
