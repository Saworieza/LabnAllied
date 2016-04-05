require 'test_helper'

class TransportSetupsControllerTest < ActionController::TestCase
  setup do
    @transport_setup = transport_setups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transport_setups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transport_setup" do
    assert_difference('TransportSetup.count') do
      post :create, transport_setup: { clearing_agent: @transport_setup.clearing_agent, container_type: @transport_setup.container_type, final_destination: @transport_setup.final_destination, port_of_dischange: @transport_setup.port_of_dischange, port_of_loading: @transport_setup.port_of_loading, transport_mode: @transport_setup.transport_mode }
    end

    assert_redirected_to transport_setup_path(assigns(:transport_setup))
  end

  test "should show transport_setup" do
    get :show, id: @transport_setup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transport_setup
    assert_response :success
  end

  test "should update transport_setup" do
    patch :update, id: @transport_setup, transport_setup: { clearing_agent: @transport_setup.clearing_agent, container_type: @transport_setup.container_type, final_destination: @transport_setup.final_destination, port_of_dischange: @transport_setup.port_of_dischange, port_of_loading: @transport_setup.port_of_loading, transport_mode: @transport_setup.transport_mode }
    assert_redirected_to transport_setup_path(assigns(:transport_setup))
  end

  test "should destroy transport_setup" do
    assert_difference('TransportSetup.count', -1) do
      delete :destroy, id: @transport_setup
    end

    assert_redirected_to transport_setups_path
  end
end
