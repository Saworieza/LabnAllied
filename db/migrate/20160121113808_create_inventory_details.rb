class CreateInventoryDetails < ActiveRecord::Migration
  def change
    create_table :inventory_details do |t|
      t.integer :inventory_code
      t.text :inventory_description
      t.integer :warehouse_code
      t.string :inventory_warehouse
      t.string :inventory_groups
      t.integer :HS_codes
      t.decimal :inventory_unit_price
      t.integer :inventory_qty
      t.string :inventory_UoM
      t.string :inventory_category

      t.timestamps null: false
    end
  end
end
