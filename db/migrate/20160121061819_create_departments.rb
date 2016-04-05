class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.integer :code
      t.string :department_type
      t.string :sub_department

      t.timestamps null: false
    end
  end
end
