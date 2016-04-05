class CostSetupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cost_setup, only: [:show, :edit, :update, :destroy]
  after_action :verify_authorized

  # GET /cost_setups
  # GET /cost_setups.json
  def index
    @cost_setups = CostSetup.all.paginate(page: params[:page], per_page: 15)
    authorize User
  end

  # GET /cost_setups/1
  # GET /cost_setups/1.json
  def show
    #@cost_setup = CostSetup.find(params[:id])
    authorize User
  end

  # GET /cost_setups/new
  def new
    @cost_setup = CostSetup.new
    authorize User
  end

  # GET /cost_setups/1/edit
  def edit
    authorize User
  end

  # POST /cost_setups
  # POST /cost_setups.json
  def create
    @cost_setup = CostSetup.new(cost_setup_params)
    authorize User

    respond_to do |format|
      if @cost_setup.save
        format.html { redirect_to @cost_setup, notice: 'Cost setup was successfully created.' }
        format.json { render :show, status: :created, location: @cost_setup }
      else
        format.html { render :new }
        format.json { render json: @cost_setup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cost_setups/1
  # PATCH/PUT /cost_setups/1.json
  def update
    respond_to do |format|
      if @cost_setup.update(cost_setup_params)
        format.html { redirect_to @cost_setup, notice: 'Cost setup was successfully updated.' }
        format.json { render :show, status: :ok, location: @cost_setup }
      else
        format.html { render :edit }
        format.json { render json: @cost_setup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cost_setups/1
  # DELETE /cost_setups/1.json
  def destroy
    @cost_setup.destroy
    authorize User
    respond_to do |format|
      format.html { redirect_to cost_setups_url, notice: 'Cost setup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cost_setup
      @cost_setup = CostSetup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cost_setup_params
      params.require(:cost_setup).permit(:cost_code, :cost_type, :cost_type_setup, :currency, :currency_rate)
    end
end
