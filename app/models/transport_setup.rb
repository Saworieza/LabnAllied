class TransportSetup < ActiveRecord::Base
	has_many :order_confirmations
end
