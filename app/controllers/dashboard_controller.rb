class DashboardController < ApplicationController
	before_action :authenticate_user!
  def index
  	@users = User.all
  	@shipments = Shipment.all
  end

  def show
  end
end
