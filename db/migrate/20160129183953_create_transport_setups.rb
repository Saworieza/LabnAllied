class CreateTransportSetups < ActiveRecord::Migration
  def change
    create_table :transport_setups do |t|
      t.string :transport_mode
      t.string :port_of_loading
      t.string :port_of_dischange
      t.string :final_destination
      t.string :clearing_agent
      t.string :container_type

      t.timestamps null: false
    end
  end
end
