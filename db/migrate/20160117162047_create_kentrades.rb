class CreateKentrades < ActiveRecord::Migration
  def change
    create_table :kentrades do |t|
      t.decimal :idf_document_fee
      t.date :payment_date

      t.timestamps null: false
    end
  end
end
