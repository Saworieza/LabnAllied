json.array!(@bill_of_ladings) do |bill_of_lading|
  json.extract! bill_of_lading, :id, :bl_number, :bl_date
  json.url bill_of_lading_url(bill_of_lading, format: :json)
end
