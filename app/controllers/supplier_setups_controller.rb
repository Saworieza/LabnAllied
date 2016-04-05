class SupplierSetupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_supplier_setup, only: [:show, :edit, :update, :destroy]

  # GET /supplier_setups
  # GET /supplier_setups.json
  def index
    @supplier_setups = SupplierSetup.all.paginate(page: params[:page], per_page: 15)
  end

  # GET /supplier_setups/1
  # GET /supplier_setups/1.json
  def show
  end

  # GET /supplier_setups/new
  def new
    @supplier_setup = SupplierSetup.new
  end

  # GET /supplier_setups/1/edit
  def edit
  end

  # POST /supplier_setups
  # POST /supplier_setups.json
  def create
    @supplier_setup = SupplierSetup.new(supplier_setup_params)

    respond_to do |format|
      if @supplier_setup.save
        format.html { redirect_to @supplier_setup, notice: 'Supplier setup was successfully created.' }
        format.json { render :show, status: :created, location: @supplier_setup }
      else
        format.html { render :new }
        format.json { render json: @supplier_setup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supplier_setups/1
  # PATCH/PUT /supplier_setups/1.json
  def update
    respond_to do |format|
      if @supplier_setup.update(supplier_setup_params)
        format.html { redirect_to @supplier_setup, notice: 'Supplier setup was successfully updated.' }
        format.json { render :show, status: :ok, location: @supplier_setup }
      else
        format.html { render :edit }
        format.json { render json: @supplier_setup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplier_setups/1
  # DELETE /supplier_setups/1.json
  def destroy
    @supplier_setup.destroy
    respond_to do |format|
      format.html { redirect_to supplier_setups_url, notice: 'Supplier setup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplier_setup
      @supplier_setup = SupplierSetup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supplier_setup_params
      params.require(:supplier_setup).permit(:supplier_name, :description, :address, :banking_details, :bus_type, :bus_type, :country_id, :country_name, :bus_clasification, :notes)
    end
end
