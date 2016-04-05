json.array!(@kentrades) do |kentrade|
  json.extract! kentrade, :id, :idf_document_fee, :payment_date
  json.url kentrade_url(kentrade, format: :json)
end
