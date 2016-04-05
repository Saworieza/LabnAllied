class OrderConfirmation < ActiveRecord::Base
	has_many :orders
accepts_nested_attributes_for :orders,
           :reject_if => :all_blank,
           :allow_destroy => true 
	
	belongs_to :transport_setup
	belongs_to :inventories
end

#default== none

############################
#discipline belongs_to student
#student has many disciplines

#rails g migration add_student_to_disciplines student:references

############################
#exam belongs to term
#term has many exams

#rails g migration add_term_to_exams term:references

############################
=begin
transport_setups belongs to order_confirmation
order_confirmation has many  transport_setups

rails g migration add_order_confirmation_to_transport_setups order_confirmation:references

inventories belongs to order_confirmation
order_confirmation has many  inventories

rails g migration add_order_confirmation_to_inventories order_confirmation:references


change
	order_confirmation = Order_confirmation.create! name: "Default"
	 					... foreign_key: true, default: order_onfirmation.id
end
=end
