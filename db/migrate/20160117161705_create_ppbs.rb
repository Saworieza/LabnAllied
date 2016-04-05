class CreatePpbs < ActiveRecord::Migration
  def change
    create_table :ppbs do |t|
      t.string :UCR_Number
      t.date :application_date

      t.timestamps null: false
    end
  end
end
