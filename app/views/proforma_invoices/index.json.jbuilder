json.array!(@proforma_invoices) do |proforma_invoice|
  json.extract! proforma_invoice, :id, :supplier_name, :proforma_invoice_nos, :pfi_date
  json.url proforma_invoice_url(proforma_invoice, format: :json)
end
