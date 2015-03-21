class VacantsController < ApplicationController
  before_action :set_vacant, only: [:show, :edit, :update, :destroy]

  # GET /vacants
  # GET /vacants.json
  def index
    @vacants = Vacant.all
  end

  # GET /vacants/1
  # GET /vacants/1.json
  def show
  end

  # GET /vacants/new
  def new
    @vacant = Vacant.new
  end

  # GET /vacants/1/edit
  def edit
  end

  # POST /vacants
  # POST /vacants.json
  def create
    @vacant = Vacant.new(vacant_params)

    respond_to do |format|
      if @vacant.save
        format.html { redirect_to @vacant, notice: 'Vacant was successfully created.' }
        format.json { render :show, status: :created, location: @vacant }
      else
        format.html { render :new }
        format.json { render json: @vacant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vacants/1
  # PATCH/PUT /vacants/1.json
  def update
    respond_to do |format|
      if @vacant.update(vacant_params)
        format.html { redirect_to @vacant, notice: 'Vacant was successfully updated.' }
        format.json { render :show, status: :ok, location: @vacant }
      else
        format.html { render :edit }
        format.json { render json: @vacant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vacants/1
  # DELETE /vacants/1.json
  def destroy
    @vacant.destroy
    respond_to do |format|
      format.html { redirect_to vacants_url, notice: 'Vacant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vacant
      @vacant = Vacant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vacant_params
      params.require(:vacant).permit(:company_id, :position, :professional_area_id, :job_type_id, :wage, :due_date, :country_id, :province_id, :district_id, :job_description, :vacant_status_id)
    end
end
