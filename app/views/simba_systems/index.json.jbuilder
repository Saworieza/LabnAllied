json.array!(@simba_systems) do |simba_system|
  json.extract! simba_system, :id, :customs_entry_number, :customs_entry_date, :exchange_rate, :total_freight_usd, :total_insurance_Kes, :total_pre_idf, :total_railway_levy, :total_kaa_levy, :total_shipping_line_charges, :total_transport_from_msa, :total_port_handling_charges, :total_offloading_expenses, :total_bank_charges, :total_services_charges, :documents_handling_charges, :total_other_costs
  json.url simba_system_url(simba_system, format: :json)
end
