class CompanySetupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_company_setup, only: [:show, :edit, :update, :destroy]
  after_action :verify_authorized

  # GET /company_setups
  # GET /company_setups.json
  def index
    @company_setups = CompanySetup.all.paginate(page: params[:page], per_page: 15)
    authorize User
  end

  # GET /company_setups/1
  # GET /company_setups/1.json
  def show
    authorize User
  end

  # GET /company_setups/new
  def new
    @company_setup = CompanySetup.new
    authorize User
  end

  # GET /company_setups/1/edit
  def edit
    authorize User
  end

  # POST /company_setups
  # POST /company_setups.json
  def create
    @company_setup = CompanySetup.new(company_setup_params)
    authorize User
    respond_to do |format|
      if @company_setup.save
        format.html { redirect_to @company_setup, notice: 'Company setup was successfully created.' }
        format.json { render :show, status: :created, location: @company_setup }
      else
        format.html { render :new }
        format.json { render json: @company_setup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_setups/1
  # PATCH/PUT /company_setups/1.json
  def update
    respond_to do |format|
      if @company_setup.update(company_setup_params)
        format.html { redirect_to @company_setup, notice: 'Company setup was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_setup }
      else
        format.html { render :edit }
        format.json { render json: @company_setup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_setups/1
  # DELETE /company_setups/1.json
  def destroy
    @company_setup.destroy
    authorize User
    respond_to do |format|
      format.html { redirect_to company_setups_url, notice: 'Company setup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_setup
      @company_setup = CompanySetup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_setup_params
      params.require(:company_setup).permit(:company_name, :company_description, :company_address)
    end
end
