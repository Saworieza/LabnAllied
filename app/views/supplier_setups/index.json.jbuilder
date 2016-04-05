json.array!(@supplier_setups) do |supplier_setup|
  json.extract! supplier_setup, :id, :supplier_name, :description, :address, :banking_details, :bus_type, :bus_type, :country_id, :country_name, :bus_clasification, :notes
  json.url supplier_setup_url(supplier_setup, format: :json)
end
