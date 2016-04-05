class User < ActiveRecord::Base
	belongs_to :department
	has_attached_file :avatar, styles: { large: "450x450#", medium: "300x300>", thumb: "100x100#", mini: "50x50#" }
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  	#enums for roles
	enum role: [:user, :agent, :admin]
	after_initialize :set_default_role, :if => :new_record?

	def set_default_role
		self.role ||= :user
	end

	#def admin?
	#	self.role.include?(:admin)
	#end

	belongs_to :department
  	
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  	attr_accessor :login

  	def self.find_first_by_auth_conditions(warden_conditions)
  		conditions = warden_conditions.dup
	  	if login = conditions.delete(:login)
	    	where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
	  	else
	    	if conditions[:username].nil?
	      		where(conditions).first
	    	else
	      		where(username: conditions[:username]).first
	    	end
	  	end
  	end

end
