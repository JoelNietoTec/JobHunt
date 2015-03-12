require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  setup do
    @candidate = candidates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidate" do
    assert_difference('Candidate.count') do
      post :create, candidate: { address: @candidate.address, birthdate: @candidate.birthdate, district_id: @candidate.district_id, document_id: @candidate.document_id, document_type_id: @candidate.document_type_id, driver_license_id: @candidate.driver_license_id, email: @candidate.email, forenames: @candidate.forenames, marital_status_id: @candidate.marital_status_id, nationality_id: @candidate.nationality_id, presentation: @candidate.presentation, professional_title: @candidate.professional_title, province_id: @candidate.province_id, sex_id: @candidate.sex_id, surnames: @candidate.surnames, township_id: @candidate.township_id, user_id: @candidate.user_id, wage_aspiration: @candidate.wage_aspiration }
    end

    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should show candidate" do
    get :show, id: @candidate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidate
    assert_response :success
  end

  test "should update candidate" do
    patch :update, id: @candidate, candidate: { address: @candidate.address, birthdate: @candidate.birthdate, district_id: @candidate.district_id, document_id: @candidate.document_id, document_type_id: @candidate.document_type_id, driver_license_id: @candidate.driver_license_id, email: @candidate.email, forenames: @candidate.forenames, marital_status_id: @candidate.marital_status_id, nationality_id: @candidate.nationality_id, presentation: @candidate.presentation, professional_title: @candidate.professional_title, province_id: @candidate.province_id, sex_id: @candidate.sex_id, surnames: @candidate.surnames, township_id: @candidate.township_id, user_id: @candidate.user_id, wage_aspiration: @candidate.wage_aspiration }
    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should destroy candidate" do
    assert_difference('Candidate.count', -1) do
      delete :destroy, id: @candidate
    end

    assert_redirected_to candidates_path
  end
end
