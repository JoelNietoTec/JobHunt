require 'test_helper'

class VacantsControllerTest < ActionController::TestCase
  setup do
    @vacant = vacants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vacants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vacant" do
    assert_difference('Vacant.count') do
      post :create, vacant: { company_id: @vacant.company_id, country_id: @vacant.country_id, district_id: @vacant.district_id, due_date: @vacant.due_date, job_description: @vacant.job_description, job_type_id: @vacant.job_type_id, position: @vacant.position, professional_area_id: @vacant.professional_area_id, province_id: @vacant.province_id, vacant_status_id: @vacant.vacant_status_id, wage: @vacant.wage }
    end

    assert_redirected_to vacant_path(assigns(:vacant))
  end

  test "should show vacant" do
    get :show, id: @vacant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vacant
    assert_response :success
  end

  test "should update vacant" do
    patch :update, id: @vacant, vacant: { company_id: @vacant.company_id, country_id: @vacant.country_id, district_id: @vacant.district_id, due_date: @vacant.due_date, job_description: @vacant.job_description, job_type_id: @vacant.job_type_id, position: @vacant.position, professional_area_id: @vacant.professional_area_id, province_id: @vacant.province_id, vacant_status_id: @vacant.vacant_status_id, wage: @vacant.wage }
    assert_redirected_to vacant_path(assigns(:vacant))
  end

  test "should destroy vacant" do
    assert_difference('Vacant.count', -1) do
      delete :destroy, id: @vacant
    end

    assert_redirected_to vacants_path
  end
end
