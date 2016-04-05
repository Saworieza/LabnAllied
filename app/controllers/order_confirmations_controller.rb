class OrderConfirmationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order_confirmation, only: [:show, :edit, :update, :destroy]

  # GET /order_confirmations
  # GET /order_confirmations.json
  def index
    @order_confirmations = OrderConfirmation.all
     respond_to do |format|
      format.html
      format.pdf do
        pdf = OrderConfirmationPdf.new(@order_confirmations)
        send_data pdf.render, filename: 'report.pdf', type: 'application/pdf',disposition: "inline"
      end
    end
  end

  # GET /order_confirmations/1
  # GET /order_confirmations/1.json
  def show
  end

  # GET /order_confirmations/new
  def new
    @order_confirmation = OrderConfirmation.new
  end

  # GET /order_confirmations/1/edit
  def edit
  end

  # POST /order_confirmations
  # POST /order_confirmations.json
  def create
    @order_confirmation = OrderConfirmation.new(order_confirmation_params)

    respond_to do |format|
      if @order_confirmation.save
        format.html { redirect_to @order_confirmation, notice: 'Order confirmation was successfully created.' }
        format.json { render :show, status: :created, location: @order_confirmation }
      else
        format.html { render :new }
        format.json { render json: @order_confirmation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_confirmations/1
  # PATCH/PUT /order_confirmations/1.json
  def update
    respond_to do |format|
      if @order_confirmation.update(order_confirmation_params)
        format.html { redirect_to @order_confirmation, notice: 'Order confirmation was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_confirmation }
      else
        format.html { render :edit }
        format.json { render json: @order_confirmation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_confirmations/1
  # DELETE /order_confirmations/1.json
  def destroy
    @order_confirmation.destroy
    respond_to do |format|
      format.html { redirect_to order_confirmations_url, notice: 'Order confirmation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_confirmation
      @order_confirmation = OrderConfirmation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_confirmation_params

      params.require(:order_confirmation).permit(:sellers, :sellers_bankers, :buyers_bankers, :IDF_No, :insurance_to_be, :mode_of_transport, :p.order_No, :proforma_nos, :terms_of_payment, :country_of_origin, :inspection_agency, :country_of_inspection, :country_of_supply, :shipment_date, :port_of_loading, :port_of_discharge, :final_destination, :shipping_marks_order_nos, :container_type, :code, :item_description, :supplier_item_description, :HScode_No, :quantity, :unit_price, :total_amount_decimal,order_attributes: [:product, :lots, :quantity, :price, :rate])

      params.require(:order_confirmation).permit(:p_order_No, :proforma_nos, :terms_of_payment, :country_of_origin, :inspection_agency, :country_of_inspection, :country_of_supply, :shipment_date, :port_of_loading, :port_of_discharge, :final_destination, :shipping_marks_order_nos, :container_type, :code, :item_description, :supplier_item_description, :HScode_No, :quantity, :unit_price, :total_amount_decimal)
    end
end
