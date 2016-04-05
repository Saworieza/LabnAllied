class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :code
      t.string :description1
      t.string :description2
      t.integer :warehouse_code
      t.string :inventory_warehouse
      t.string :inventory_groups
      t.integer :HS_codes
      t.decimal :inventory_price
      t.decimal :quantity
      t.string :inventory_uom
      t.string :category

      t.timestamps null: false
    end
  end
end
