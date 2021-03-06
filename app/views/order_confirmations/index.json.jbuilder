json.array!(@order_confirmations) do |order_confirmation|
  json.extract! order_confirmation, :id, :sellers, :sellers_bankers, :buyers_bankers, :IDF_No, :insurance_to_be, :mode_of_transport, :p.order_No, :proforma_nos, :terms_of_payment, :country_of_origin, :inspection_agency, :country_of_inspection, :country_of_supply, :shipment_date, :port_of_loading, :port_of_discharge, :final_destination, :shipping_marks_order_nos, :container_type, :code, :item_description, :supplier_item_description, :HScode_No, :quantity, :unit_price, :total_amount_decimal
  json.url order_confirmation_url(order_confirmation, format: :json)
end
