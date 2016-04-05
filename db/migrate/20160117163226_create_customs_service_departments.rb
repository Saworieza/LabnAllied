class CreateCustomsServiceDepartments < ActiveRecord::Migration
  def change
    create_table :customs_service_departments do |t|
      t.integer :idf_form_nos
      t.date :payment_date
      t.decimal :rate

      t.timestamps null: false
    end
  end
end
