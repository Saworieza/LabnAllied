class BusinessClassificationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_business_classification, only: [:show, :edit, :update, :destroy]

  # GET /business_classifications
  # GET /business_classifications.json
  def index
    @business_classifications = BusinessClassification.all.paginate(page: params[:page], per_page: 15)

  end

  # GET /business_classifications/1
  # GET /business_classifications/1.json
  def show
  end

  # GET /business_classifications/new
  def new
    @business_classification = BusinessClassification.new
  end

  # GET /business_classifications/1/edit
  def edit
  end

  # POST /business_classifications
  # POST /business_classifications.json
  def create
    @business_classification = BusinessClassification.new(business_classification_params)

    respond_to do |format|
      if @business_classification.save
        format.html { redirect_to @business_classification, notice: 'Business classification was successfully created.' }
        format.json { render :show, status: :created, location: @business_classification }
      else
        format.html { render :new }
        format.json { render json: @business_classification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_classifications/1
  # PATCH/PUT /business_classifications/1.json
  def update
    respond_to do |format|
      if @business_classification.update(business_classification_params)
        format.html { redirect_to @business_classification, notice: 'Business classification was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_classification }
      else
        format.html { render :edit }
        format.json { render json: @business_classification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_classifications/1
  # DELETE /business_classifications/1.json
  def destroy
    @business_classification.destroy
    respond_to do |format|
      format.html { redirect_to business_classifications_url, notice: 'Business classification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_classification
      @business_classification = BusinessClassification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_classification_params
      params.require(:business_classification).permit(:business_classification)
    end
end
