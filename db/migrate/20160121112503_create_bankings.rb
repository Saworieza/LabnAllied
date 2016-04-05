class CreateBankings < ActiveRecord::Migration
  def change
    create_table :bankings do |t|
      t.string :bank_name
      t.string :bank_branch
      t.integer :Account_number
      t.integer :branch_code
      t.text :branch_description
      t.integer :swift_code
      t.text :other_details
      t.text :email

      t.timestamps null: false
    end
  end
end
