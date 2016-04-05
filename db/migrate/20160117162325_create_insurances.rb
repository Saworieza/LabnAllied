class CreateInsurances < ActiveRecord::Migration
  def change
    create_table :insurances do |t|
      t.string :insurance_name
      t.decimal :total_insurance_charges

      t.timestamps null: false
    end
  end
end
