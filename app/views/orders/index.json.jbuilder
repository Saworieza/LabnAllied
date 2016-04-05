json.array!(@orders) do |order|
  json.extract! order, :id, :product, :lots, :quantity, :price, :rate, :total_freight_usd, :total_insurance_Kes, :total_pre_idf, :total_idf_bal, :total_railway_levy, :total_kaa_levy, :total_shipping_line_charges, :total_transport_from_msa, :total_port_handling_charges, :total_offloading_expenses, :total_bank_charges, :total_services_charges, :total_other_costs
  json.url order_url(order, format: :json)
end
