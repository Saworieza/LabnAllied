class AddAttachmentAvatarToProformaInvoices < ActiveRecord::Migration
  def self.up
    change_table :proforma_invoices do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :proforma_invoices, :avatar
  end
end
