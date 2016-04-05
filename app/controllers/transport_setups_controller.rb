class TransportSetupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_transport_setup, only: [:show, :edit, :update, :destroy]
  after_action :verify_authorized

  # GET /transport_setups
  # GET /transport_setups.json
  def index
    @transport_setups = TransportSetup.all.paginate(page: params[:page], per_page: 15)
    authorize User
  end

  # GET /transport_setups/1
  # GET /transport_setups/1.json
  def show
    authorize User
  end

  # GET /transport_setups/new
  def new
    @transport_setup = TransportSetup.new
    authorize User
  end

  # GET /transport_setups/1/edit
  def edit
    authorize User
  end

  # POST /transport_setups
  # POST /transport_setups.json
  def create
    @transport_setup = TransportSetup.new(transport_setup_params)
    authorize User
    respond_to do |format|
      if @transport_setup.save
        format.html { redirect_to @transport_setup, notice: 'Transport setup was successfully created.' }
        format.json { render :show, status: :created, location: @transport_setup }
      else
        format.html { render :new }
        format.json { render json: @transport_setup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transport_setups/1
  # PATCH/PUT /transport_setups/1.json
  def update
    respond_to do |format|
      if @transport_setup.update(transport_setup_params)
        format.html { redirect_to @transport_setup, notice: 'Transport setup was successfully updated.' }
        format.json { render :show, status: :ok, location: @transport_setup }
      else
        format.html { render :edit }
        format.json { render json: @transport_setup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transport_setups/1
  # DELETE /transport_setups/1.json
  def destroy
    @transport_setup.destroy
    respond_to do |format|
      format.html { redirect_to transport_setups_url, notice: 'Transport setup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transport_setup
      @transport_setup = TransportSetup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transport_setup_params
      params.require(:transport_setup).permit(:transport_mode, :port_of_loading, :port_of_dischange, :final_destination, :clearing_agent, :container_type)
    end
end
