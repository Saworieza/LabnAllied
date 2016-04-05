json.array!(@insurances) do |insurance|
  json.extract! insurance, :id, :insurance_name, :total_insurance_charges
  json.url insurance_url(insurance, format: :json)
end
