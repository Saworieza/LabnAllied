class Shipment < ActiveRecord::Base
	    has_many :orders
	    has_many :file_informations, :through => :orders
	    
	    validates :country_of_origin,
	        :supplier,:supply_nature,:custom_entry_nos,
	        :custom_exchange_rate,
	        :custom_value, :agent_inv_nos,
	        :Quantity, :total_cost_usd, presence: true

	    accepts_nested_attributes_for :orders,
           :reject_if => :all_blank,
           :allow_destroy => true 
end
