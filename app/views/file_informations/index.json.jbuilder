json.array!(@file_informations) do |file_information|
  json.extract! file_information, :id, :file_number, :idf_date
  json.url file_information_url(file_information, format: :json)
end
