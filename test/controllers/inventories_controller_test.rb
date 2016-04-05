require 'test_helper'

class InventoriesControllerTest < ActionController::TestCase
  setup do
    @inventory = inventories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventory" do
    assert_difference('Inventory.count') do
      post :create, inventory: { HS_codes: @inventory.HS_codes, category: @inventory.category, code: @inventory.code, description1: @inventory.description1, description2: @inventory.description2, inventory_groups: @inventory.inventory_groups, inventory_price: @inventory.inventory_price, inventory_uom: @inventory.inventory_uom, inventory_warehouse: @inventory.inventory_warehouse, quantity: @inventory.quantity, warehouse_code: @inventory.warehouse_code }
    end

    assert_redirected_to inventory_path(assigns(:inventory))
  end

  test "should show inventory" do
    get :show, id: @inventory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inventory
    assert_response :success
  end

  test "should update inventory" do
    patch :update, id: @inventory, inventory: { HS_codes: @inventory.HS_codes, category: @inventory.category, code: @inventory.code, description1: @inventory.description1, description2: @inventory.description2, inventory_groups: @inventory.inventory_groups, inventory_price: @inventory.inventory_price, inventory_uom: @inventory.inventory_uom, inventory_warehouse: @inventory.inventory_warehouse, quantity: @inventory.quantity, warehouse_code: @inventory.warehouse_code }
    assert_redirected_to inventory_path(assigns(:inventory))
  end

  test "should destroy inventory" do
    assert_difference('Inventory.count', -1) do
      delete :destroy, id: @inventory
    end

    assert_redirected_to inventories_path
  end
end
