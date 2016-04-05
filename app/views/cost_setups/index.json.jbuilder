json.array!(@cost_setups) do |cost_setup|
  json.extract! cost_setup, :id, :cost_code, :cost_type, :cost_type_setup, :currency, :currency_rate
  json.url cost_setup_url(cost_setup, format: :json)
end
