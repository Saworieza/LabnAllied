class KentradesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_kentrade, only: [:show, :edit, :update, :destroy]

  # GET /kentrades
  # GET /kentrades.json
  def index
    @kentrades = Kentrade.all.paginate(page: params[:page], per_page: 15)
  end

  # GET /kentrades/1
  # GET /kentrades/1.json
  def show
  end

  # GET /kentrades/new
  def new
    @kentrade = Kentrade.new
  end

  # GET /kentrades/1/edit
  def edit
  end

  # POST /kentrades
  # POST /kentrades.json
  def create
    @kentrade = Kentrade.new(kentrade_params)

    respond_to do |format|
      if @kentrade.save
        format.html { redirect_to @kentrade, notice: 'Kentrade was successfully created.' }
        format.json { render :show, status: :created, location: @kentrade }
      else
        format.html { render :new }
        format.json { render json: @kentrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kentrades/1
  # PATCH/PUT /kentrades/1.json
  def update
    respond_to do |format|
      if @kentrade.update(kentrade_params)
        format.html { redirect_to @kentrade, notice: 'Kentrade was successfully updated.' }
        format.json { render :show, status: :ok, location: @kentrade }
      else
        format.html { render :edit }
        format.json { render json: @kentrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kentrades/1
  # DELETE /kentrades/1.json
  def destroy
    @kentrade.destroy
    respond_to do |format|
      format.html { redirect_to kentrades_url, notice: 'Kentrade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kentrade
      @kentrade = Kentrade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kentrade_params
      params.require(:kentrade).permit(:idf_document_fee, :payment_date)
    end
end
