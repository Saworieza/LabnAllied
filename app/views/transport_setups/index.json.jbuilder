json.array!(@transport_setups) do |transport_setup|
  json.extract! transport_setup, :id, :transport_mode, :port_of_loading, :port_of_dischange, :final_destination, :clearing_agent, :container_type
  json.url transport_setup_url(transport_setup, format: :json)
end
