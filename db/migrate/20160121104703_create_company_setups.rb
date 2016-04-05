class CreateCompanySetups < ActiveRecord::Migration
  def change
    create_table :company_setups do |t|
      t.string :company_name
      t.text :company_description
      t.text :company_address

      t.timestamps null: false
    end
  end
end
