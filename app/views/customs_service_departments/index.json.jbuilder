json.array!(@customs_service_departments) do |customs_service_department|
  json.extract! customs_service_department, :id, :idf_form_nos, :payment_date, :rate
  json.url customs_service_department_url(customs_service_department, format: :json)
end
