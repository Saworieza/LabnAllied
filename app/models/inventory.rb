class Inventory < ActiveRecord::Base
	has_many :order_confirmations
end
