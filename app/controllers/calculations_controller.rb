class CalculationsController < ApplicationController
  before_action :authenticate_user!
  #around_action :cal, :only[index]
  after_action :verify_authorized

  def index
    @shipments = Shipment.all.paginate(page: params[:page], per_page: 1)
    @order = Order.all.paginate(page: params[:page], per_page: 15)
    authorize User
  end

=begin
t.decimal :total_cost_usd
      t.decimal :total_freight_usd
      t.decimal :total_insurance_Kes
      t.decimal :total_idf_bal 
      t.decimal :total_pre_idf
      t.decimal :total_railway_levy
      t.decimal :total_kaa_levy
      t.decimal :total_shipping_line_charges
      t.decimal :total_transport_from_msa
      t.decimal :total_port_handling_charges
      t.decimal :total_offloading_expenses
      t.decimal :total_bank_charges
      t.decimal :total_services_charges
      t.decimal :documents_handling_charges
      t.decimal :total_other_costs
=end

def cost_splitting
  @shipments = Shipment.all.paginate(page: params[:page], per_page: 1)
  @order = Order.all.paginate(page: params[:page], per_page: 1)
  @file_info = FileInformation.all.paginate(page: params[:page], per_page: 1)

  
@shipments.each do |s|
  unless s.shared != false
    @file_info.each do |f|
    @order.each do |o|
      puts "o.product"
    end
  end
  end
end


end
end
