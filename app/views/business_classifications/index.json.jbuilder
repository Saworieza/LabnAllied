json.array!(@business_classifications) do |business_classification|
  json.extract! business_classification, :id, :business_classification
  json.url business_classification_url(business_classification, format: :json)
end
