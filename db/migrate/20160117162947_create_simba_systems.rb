class CreateSimbaSystems < ActiveRecord::Migration
  def change
    create_table :simba_systems do |t|
      t.string :customs_entry_number
      t.date :customs_entry_date
      t.decimal :exchange_rate
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

      t.timestamps null: false
    end
  end
end
