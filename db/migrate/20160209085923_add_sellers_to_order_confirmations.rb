class AddSellersToOrderConfirmations < ActiveRecord::Migration
  def change
    add_column :order_confirmations, :sellers, :string
  end
end
