class VacantsController < ApplicationController
  before_action :set_vacant, only: [:show, :edit, :update, :destroy, :postulate]

  add_breadcrumb "Vacantes", :vacants_path

  # GET /vacants
  # GET /vacants.json
  def index
    @vacants = Vacant.order(created_at: :desc)
  end

  # GET /vacants/1
  # GET /vacants/1.json
  def show
    add_breadcrumb "Detalles", @vacant
  end

  # GET /vacants/new
  def new
    @vacant = Vacant.new
    add_breadcrumb "Nueva", @vacant
  end

  # GET /vacants/1/edit
  def edit
    add_breadcrumb "Editar", edit_vacant_path(@vacant.id)
  end

  def postulate
    @candidate = Candidate.where("user_id = ?", current_user.id).first
    Postulation.create(candidate_id: @candidate.id, vacant_id: @vacant.id, postulation_status_id: 1)
    respond_to do |format|
      format.html { redirect_to @vacant, notice: 'Postulación Enviada' }
    end
  end

  # POST /vacants
  # POST /vacants.json
  def create
    @vacant = Vacant.new(vacant_params)

    respond_to do |format|
      if @vacant.save
        format.html { redirect_to @vacant, notice: 'Vacante publicada' }
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
        format.html { redirect_to @vacant, notice: 'Vacante actualizada' }
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
