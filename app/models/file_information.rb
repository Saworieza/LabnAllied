class FileInformation < ActiveRecord::Base
	has_many :orders
	has_many :shipments, :through => :orders

	validates :file_number,:idf_date, presence: true

	accepts_nested_attributes_for :orders,
           :reject_if => :all_blank,
           :allow_destroy => true 
end
