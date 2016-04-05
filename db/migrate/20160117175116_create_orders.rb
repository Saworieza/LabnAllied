class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :shipment, index: true
      t.belongs_to :file_information, index: true
      t.belongs_to :order_confirmation, index: true
      t.string :product
      t.integer :lots
      t.decimal :quantity
      t.decimal :price
      t.decimal :rate
      
      t.timestamps null: false
    end
  end
end
