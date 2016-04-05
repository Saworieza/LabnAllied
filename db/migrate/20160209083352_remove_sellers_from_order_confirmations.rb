class RemoveSellersFromOrderConfirmations < ActiveRecord::Migration
  def change
  	remove_column :order_confirmations, :sellers, :string
  	add_column :order_confirmations, :transport_setup_id, :integer
  end
end
