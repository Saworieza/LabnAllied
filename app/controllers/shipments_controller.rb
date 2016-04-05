class ShipmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_shipment, only: [:show, :edit, :update, :destroy] #wet code!!!

  # GET /shipments
  # GET /shipments.json
  def index
    @shipments = Shipment.all.paginate(page: params[:page], per_page: 15)
     respond_to do |format|
      format.html
      format.pdf do
        pdf = ShipmentPdf.new(@shipments)
        send_data pdf.render, filename: 'report.pdf', type: 'application/pdf',disposition: "inline"
      end
    end
  end

  # GET /shipments/1
  # GET /shipments/1.json
  def show
  end

  # GET /shipments/new
  def new
    @shipment = Shipment.new
  end

  # GET /shipments/1/edit
  def edit
  end

  # POST /shipments
  # POST /shipments.json
  def create
    @shipment = Shipment.new(shipment_params)

    respond_to do |format|
      if @shipment.save
        format.html { redirect_to @shipment, notice: 'Shipment was successfully created.' }
        format.json { render :show, status: :created, location: @shipment }
      else
        format.html { render :new }
        format.json { render json: @shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipments/1
  # PATCH/PUT /shipments/1.json
  def update
    respond_to do |format|
      if @shipment.update(shipment_params)
        format.html { redirect_to @shipment, notice: 'Shipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @shipment }
      else
        format.html { render :edit }
        format.json { render json: @shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipments/1
  # DELETE /shipments/1.json
  def destroy
    @shipment.destroy
    respond_to do |format|
      format.html { redirect_to shipments_url, notice: 'Shipment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipment
      @shipment = Shipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shipment_params
      params.require(:shipment).permit(:shared, :complete,:country_of_origin, :supplier, :supply_nature, :custom_entry_nos, :custom_exchange_rate, :custom_value, :agent_inv_nos, :Quantity, :total_cost_usd,:total_freight_usd,:total_insurance_Kes,:total_idf_bal,:total_pre_idf,:total_railway_levy,:total_kaa_levy,:total_shipping_line_charges,:total_transport_from_msa,:total_port_handling_charges,:total_offloading_expenses,:total_bank_charges,:total_services_charges,
:documents_handling_charges,:total_other_costs,order_attributes: [:product, :lots, :quantity, :price, :rate])
    end
end
