json.array!(@company_setups) do |company_setup|
  json.extract! company_setup, :id, :company_name, :company_description, :company_address
  json.url company_setup_url(company_setup, format: :json)
end
