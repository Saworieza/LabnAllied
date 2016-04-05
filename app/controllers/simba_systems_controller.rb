class SimbaSystemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_simba_system, only: [:show, :edit, :update, :destroy]

  # GET /simba_systems
  # GET /simba_systems.json
  def index
    @simba_systems = SimbaSystem.all.paginate(page: params[:page], per_page: 15)
  end

  # GET /simba_systems/1
  # GET /simba_systems/1.json
  def show
  end

  # GET /simba_systems/new
  def new
    @simba_system = SimbaSystem.new
  end

  # GET /simba_systems/1/edit
  def edit
  end

  # POST /simba_systems
  # POST /simba_systems.json
  def create
    @simba_system = SimbaSystem.new(simba_system_params)

    respond_to do |format|
      if @simba_system.save
        format.html { redirect_to @simba_system, notice: 'Simba system was successfully created.' }
        format.json { render :show, status: :created, location: @simba_system }
      else
        format.html { render :new }
        format.json { render json: @simba_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simba_systems/1
  # PATCH/PUT /simba_systems/1.json
  def update
    respond_to do |format|
      if @simba_system.update(simba_system_params)
        format.html { redirect_to @simba_system, notice: 'Simba system was successfully updated.' }
        format.json { render :show, status: :ok, location: @simba_system }
      else
        format.html { render :edit }
        format.json { render json: @simba_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simba_systems/1
  # DELETE /simba_systems/1.json
  def destroy
    @simba_system.destroy
    respond_to do |format|
      format.html { redirect_to simba_systems_url, notice: 'Simba system was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simba_system
      @simba_system = SimbaSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def simba_system_params
      params.require(:simba_system).permit(:customs_entry_number, :customs_entry_date, :exchange_rate, :total_freight_usd, :total_insurance_Kes, :total_pre_idf, :total_railway_levy, :total_kaa_levy, :total_shipping_line_charges, :total_transport_from_msa, :total_port_handling_charges, :total_offloading_expenses, :total_bank_charges, :total_services_charges, :documents_handling_charges, :total_other_costs)
    end
end
