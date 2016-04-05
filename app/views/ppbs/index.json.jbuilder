json.array!(@ppbs) do |ppb|
  json.extract! ppb, :id, :UCR_Number, :application_date
  json.url ppb_url(ppb, format: :json)
end
