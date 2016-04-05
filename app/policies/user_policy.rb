class UserPolicy < ApplicationPolicy
	attr_reader :current_user, :model

	def initialize(current_user, model)
		@current_user = current_user
		@user = model
	end
	
	class Scope
		attr_reader :user, :scope
		
		def initialize(user, scope)
			@user = user
			@scope = scope
		end
		
		def resolve
			if user.admin
				scope.all
			elsif user.agent?
				 scope.where(role: [1,0])
		   	else
		   		scope.none
		   	end
		end
	end
	
	def index?
		@current_user.admin? || @current_user == @user 		
	end

	def show?
		@current_user.admin? || @current_user == @user
	end

	def update?
		@current_user.admin?
	end

	def destroy?
		return false if @current_user == @user
		@current_user.admin?
	end

	def rails_admin?(action)
=begin
	    case action
	      when :index, :show, :destroy, :new
	        false
	      else
	        super
	    end
=end	
	end
end