class CreateProformaInvoices < ActiveRecord::Migration
  def change
    create_table :proforma_invoices do |t|
      t.string :supplier_name
      t.string :proforma_invoice_nos
      t.date :pfi_date

      t.timestamps null: false
    end
  end
end
