json.array!(@departments) do |department|
  json.extract! department, :id, :name, :code, :type, :sub_department
  json.url department_url(department, format: :json)
end
