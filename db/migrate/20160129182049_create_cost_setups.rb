class CreateCostSetups < ActiveRecord::Migration
  def change
    create_table :cost_setups do |t|
      t.string :cost_code
      t.string :cost_type
      t.string :cost_type_setup
      t.decimal :currency
      t.decimal :currency_rate

      t.timestamps null: false
    end
  end
end
