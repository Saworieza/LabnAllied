class UsersController < ApplicationController
	before_action :authenticate_user!
	after_action :verify_authorized

	def index
		@users = User.all.paginate(page: params[:page], per_page: 15)
		authorize User
	end

	def show
		@user = User.find(params[:id])
		authorize @ser
	end

	def destroy
		user = User.find(params[:id])
		authorize user
		user.destroy
		redirect_to users_path, :notice => "User Deleted"
	end

	def update
		@user = User.find(params[:id])
		authorize @user

		if @user.update_attributes(secure_params)
			redirect_to users_path, :success => 'User has Been Updated'
		else
			redirect_to	users_path, :alert => 'Unable to Update User'
		end
	end

	private

	def secure_params
		params.require(:user).permit(:role)
	end
end
