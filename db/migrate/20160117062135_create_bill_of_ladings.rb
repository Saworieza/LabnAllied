class CreateBillOfLadings < ActiveRecord::Migration
  def change
    create_table :bill_of_ladings do |t|
      t.integer :bl_number
      t.date :bl_date

      t.timestamps null: false
    end
  end
end
