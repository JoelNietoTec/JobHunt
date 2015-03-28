class CandidatesController < ApplicationController
  before_action :set_candidate, only: [:show, :edit, :update, :destroy]
  before_action :login_required

  add_breadcrumb "Candidatos", :candidates_path

  # GET /candidates
  # GET /candidates.json
  def index
    @candidates = Candidate.where(:active => true)
  end

  # GET /candidates/1
  # GET /candidates/1.json
  def show
    if @candidate.forenames && @candidate.surnames
      add_breadcrumb @candidate.forenames + " " + @candidate.surnames, @candidate
    else
      redirect_to edit_candidate_path(@candidate)
    end
  end

  # GET /candidates/new
  def new
    @candidate = Candidate.new
  end

  # GET /candidates/1/edit
  def edit
  end

  # POST /candidates
  # POST /candidates.json
  def create
    @candidate = Candidate.new(candidate_params)

    respond_to do |format|
      if @candidate.save
        format.html { redirect_to @candidate, notice: 'Candidate was successfully created.' }
        format.json { render :show, status: :created, location: @candidate }
      else
        format.html { render :new }
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /candidates/1
  # PATCH/PUT /candidates/1.json
  def update
    respond_to do |format|
      if @candidate.update(candidate_params)
        format.html { redirect_to @candidate, notice: 'Perfil de candidato actualizado' }
        format.json { render :show, status: :ok, location: @candidate }
      else
        format.html { render :edit }
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /candidates/1
  # DELETE /candidates/1.json
  def destroy
    @candidate.destroy
    respond_to do |format|
      format.html { redirect_to candidates_url, notice: 'Candidate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_candidate
    @candidate = Candidate.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def candidate_params
    params.require(:candidate).permit(:user_id, :forenames, :surnames, :sex_id, :birthdate, :marital_status_id, :document_type_id, :document_id, :email, :nationality_id, :province_id, :district_id, :township_id, :address, :presentation, :wage_aspiration, :professional_title, :driver_license_id, :avatar, :active,
      candidate_phones_attributes: [
        :id, :phone_type_id, :phone_number, :_destroy
        ],
      candidate_experiences_attributes: [
        :id, :company, :position, :starting_salary, :final_salary, :industry_id, :professional_area_id, :starting_date, :end_date,      :exit_reason_id, :current_job, :description, :_destroy
        ],
      candidate_educations_attributes: [
        :id, :institution, :title, :education_level_id, :educative_status_id, :educative_area_id, :starting_date, :finish_date, :country_id, :_destroy
        ],
      candidate_languages_attributes: [
        :id, :language_id, :language_level_id, :_destroy
        ],
      candidate_references_attributes: [
        :id, :name, :reference_type_id, :occupation, :phone, :_destroy
        ]
      )
  end
end
