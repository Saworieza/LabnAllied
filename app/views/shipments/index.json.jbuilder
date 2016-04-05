json.array!(@shipments) do |shipment|
  json.extract! shipment, :id, :file_nos, :country_of_origin, :supplier, :supply_nature, :custom_entry_nos, :custom_exchange_rate, :custom_value, :agent_inv_nos, :Quantity, :total_cost_usd
  json.url shipment_url(shipment, format: :json)
end
