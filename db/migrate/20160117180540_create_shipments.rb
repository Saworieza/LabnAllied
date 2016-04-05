class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.boolean :shared
      t.string :country_of_origin
      t.string :supplier
      t.string :supply_nature
      t.integer :custom_entry_nos
      t.decimal :custom_exchange_rate
      t.decimal :custom_value
      t.string :agent_inv_nos
      t.decimal :Quantity
      t.decimal :total_cost_usd
      t.decimal :total_freight_usd
      t.decimal :total_insurance_Kes
      t.decimal :total_idf_bal 
      t.decimal :total_pre_idf
      t.decimal :total_railway_levy
      t.decimal :total_kaa_levy
      t.decimal :total_shipping_line_charges
      t.decimal :total_transport_from_msa
      t.decimal :total_port_handling_charges
      t.decimal :total_offloading_expenses
      t.decimal :total_bank_charges
      t.decimal :total_services_charges
      t.decimal :documents_handling_charges
      t.decimal :total_other_costs
      t.boolean :complete

      t.timestamps null: false
    end
  end
end
