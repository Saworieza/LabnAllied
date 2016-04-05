class ProformaInvoicesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_proforma_invoice, only: [:show, :edit, :update, :destroy]

  # GET /proforma_invoices
  # GET /proforma_invoices.json
  def index
    @proforma_invoices = ProformaInvoice.all.paginate(page: params[:page], per_page: 15)
  end

  # GET /proforma_invoices/1
  # GET /proforma_invoices/1.json
  def show
  end

  # GET /proforma_invoices/new
  def new
    @proforma_invoice = ProformaInvoice.new
  end

  # GET /proforma_invoices/1/edit
  def edit
  end

  # POST /proforma_invoices
  # POST /proforma_invoices.json
  def create
    @proforma_invoice = ProformaInvoice.new(proforma_invoice_params)

    respond_to do |format|
      if @proforma_invoice.save
        format.html { redirect_to @proforma_invoice, notice: 'Proforma invoice was successfully created.' }
        format.json { render :show, status: :created, location: @proforma_invoice }
      else
        format.html { render :new }
        format.json { render json: @proforma_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proforma_invoices/1
  # PATCH/PUT /proforma_invoices/1.json
  def update
    respond_to do |format|
      if @proforma_invoice.update(proforma_invoice_params)
        format.html { redirect_to @proforma_invoice, notice: 'Proforma invoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @proforma_invoice }
      else
        format.html { render :edit }
        format.json { render json: @proforma_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proforma_invoices/1
  # DELETE /proforma_invoices/1.json
  def destroy
    @proforma_invoice.destroy
    respond_to do |format|
      format.html { redirect_to proforma_invoices_url, notice: 'Proforma invoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proforma_invoice
      @proforma_invoice = ProformaInvoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proforma_invoice_params
      params.require(:proforma_invoice).permit(:supplier_name, :proforma_invoice_nos, :pfi_date)
    end
end
