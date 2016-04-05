class CreateOrderConfirmations < ActiveRecord::Migration
  def change
    create_table :order_confirmations do |t|
      t.text :sellers
      t.text :sellers_bankers
      t.text :buyers_bankers
      t.integer :IDF_No
      t.text :insurance_to_be
      t.string :mode_of_transport
      t.string :p_order_No
      t.string :proforma_nos
      t.text :terms_of_payment
      t.string :country_of_origin
      t.string :inspection_agency
      t.string :country_of_inspection
      t.string :country_of_supply
      t.date :shipment_date
      t.string :port_of_loading
      t.string :port_of_discharge
      t.string :final_destination
      t.string :shipping_marks_order_nos
      t.string :container_type
      t.integer :code
      t.text :item_description
      t.text :supplier_item_description
      t.string :HScode_No
      t.decimal :quantity
      t.decimal :unit_price
      t.string :total_amount_decimal

      t.timestamps null: false
    end
  end
end
