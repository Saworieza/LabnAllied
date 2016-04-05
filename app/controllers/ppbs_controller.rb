class PpbsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ppb, only: [:show, :edit, :update, :destroy]

  # GET /ppbs
  # GET /ppbs.json
  def index
    @ppbs = Ppb.all.paginate(page: params[:page], per_page: 15)
  end

  # GET /ppbs/1
  # GET /ppbs/1.json
  def show
  end

  # GET /ppbs/new
  def new
    @ppb = Ppb.new
  end

  # GET /ppbs/1/edit
  def edit
  end

  # POST /ppbs
  # POST /ppbs.json
  def create
    @ppb = Ppb.new(ppb_params)

    respond_to do |format|
      if @ppb.save
        format.html { redirect_to @ppb, notice: 'Pharmaceutical Listing was successfully created.' }
        format.json { render :show, status: :created, location: @ppb }
      else
        format.html { render :new }
        format.json { render json: @ppb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ppbs/1
  # PATCH/PUT /ppbs/1.json
  def update
    respond_to do |format|
      if @ppb.update(ppb_params)
        format.html { redirect_to @ppb, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @ppb }
      else
        format.html { render :edit }
        format.json { render json: @ppb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ppbs/1
  # DELETE /ppbs/1.json
  def destroy
    @ppb.destroy
    respond_to do |format|
      format.html { redirect_to ppbs_url, notice: 'Listing was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ppb
      @ppb = Ppb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ppb_params
      params.require(:ppb).permit(:avatar,:UCR_Number, :application_date)
    end
end
