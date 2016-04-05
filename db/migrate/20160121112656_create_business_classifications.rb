class CreateBusinessClassifications < ActiveRecord::Migration
  def change
    create_table :business_classifications do |t|
      t.string :business_classification

      t.timestamps null: false
    end
  end
end
