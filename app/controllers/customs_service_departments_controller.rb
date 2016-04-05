class CustomsServiceDepartmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_customs_service_department, only: [:show, :edit, :update, :destroy]

  # GET /customs_service_departments
  # GET /customs_service_departments.json
  def index
    @customs_service_departments = CustomsServiceDepartment.all.paginate(page: params[:page], per_page: 15)
  end

  # GET /customs_service_departments/1
  # GET /customs_service_departments/1.json
  def show
  end

  # GET /customs_service_departments/new
  def new
    @customs_service_department = CustomsServiceDepartment.new
  end

  # GET /customs_service_departments/1/edit
  def edit
  end

  # POST /customs_service_departments
  # POST /customs_service_departments.json
  def create
    @customs_service_department = CustomsServiceDepartment.new(customs_service_department_params)

    respond_to do |format|
      if @customs_service_department.save
        format.html { redirect_to @customs_service_department, notice: 'Customs service department was successfully created.' }
        format.json { render :show, status: :created, location: @customs_service_department }
      else
        format.html { render :new }
        format.json { render json: @customs_service_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customs_service_departments/1
  # PATCH/PUT /customs_service_departments/1.json
  def update
    respond_to do |format|
      if @customs_service_department.update(customs_service_department_params)
        format.html { redirect_to @customs_service_department, notice: 'Customs service department was successfully updated.' }
        format.json { render :show, status: :ok, location: @customs_service_department }
      else
        format.html { render :edit }
        format.json { render json: @customs_service_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customs_service_departments/1
  # DELETE /customs_service_departments/1.json
  def destroy
    @customs_service_department.destroy
    respond_to do |format|
      format.html { redirect_to customs_service_departments_url, notice: 'Customs service department was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customs_service_department
      @customs_service_department = CustomsServiceDepartment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customs_service_department_params
      params.require(:customs_service_department).permit(:idf_form_nos, :payment_date, :rate)
    end
end
