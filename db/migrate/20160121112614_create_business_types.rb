class CreateBusinessTypes < ActiveRecord::Migration
  def change
    create_table :business_types do |t|
      t.text :business_type

      t.timestamps null: false
    end
  end
end
