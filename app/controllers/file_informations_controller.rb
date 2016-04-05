class FileInformationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_file_information, only: [:show, :edit, :update, :destroy]

  # GET /file_informations
  # GET /file_informations.json
  def index
    @file_informations = FileInformation.all.paginate(page: params[:page], per_page: 15)
  end

  # GET /file_informations/1
  # GET /file_informations/1.json
  def show
  end

  # GET /file_informations/new
  def new
    @file_information = FileInformation.new
  end

  # GET /file_informations/1/edit
  def edit
  end

  # POST /file_informations
  # POST /file_informations.json
  def create
    @file_information = FileInformation.new(file_information_params)

    respond_to do |format|
      if @file_information.save
        format.html { redirect_to @file_information, notice: 'File information was successfully created.' }
        format.json { render :show, status: :created, location: @file_information }
      else
        format.html { render :new }
        format.json { render json: @file_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /file_informations/1
  # PATCH/PUT /file_informations/1.json
  def update
    respond_to do |format|
      if @file_information.update(file_information_params)
        format.html { redirect_to @file_information, notice: 'File information was successfully updated.' }
        format.json { render :show, status: :ok, location: @file_information }
      else
        format.html { render :edit }
        format.json { render json: @file_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /file_informations/1
  # DELETE /file_informations/1.json
  def destroy
    @file_information.destroy
    respond_to do |format|
      format.html { redirect_to file_informations_url, notice: 'File information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_information
      @file_information = FileInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def file_information_params
      params.require(:file_information).permit(:file_number, :idf_date)
    end
end
