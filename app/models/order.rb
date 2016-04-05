class Order < ActiveRecord::Base
    belongs_to :shipment
    belongs_to :file_information
    belongs_to :order_confirmation

	validates :product,:lots,:quantity,:price,:rate,presence: true
	
end