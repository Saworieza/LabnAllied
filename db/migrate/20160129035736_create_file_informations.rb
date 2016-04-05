class CreateFileInformations < ActiveRecord::Migration
  def change
    create_table :file_informations do |t|
      t.string :file_number
      t.date :idf_date

      t.timestamps null: false
    end
  end
end
