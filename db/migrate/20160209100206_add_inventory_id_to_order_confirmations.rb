class AddInventoryIdToOrderConfirmations < ActiveRecord::Migration
  def change
    add_column :order_confirmations, :inventory_id, :integer
  end
end
