class CreateSupplierSetups < ActiveRecord::Migration
  def change
    create_table :supplier_setups do |t|
      t.string :supplier_name
      t.text :description
      t.text :address
      t.text :banking_details
      t.integer :bus_type
      t.string :bus_type
      t.integer :country_id
      t.string :country_name
      t.integer :bus_clasification
      t.text :notes

      t.timestamps null: false
    end
  end
end
