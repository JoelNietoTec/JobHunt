require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post :create, company: { address: @company.address, business_name: @company.business_name, company_type_id: @company.company_type_id, contact_name: @company.contact_name, district_id: @company.district_id, email: @company.email, industry_id: @company.industry_id, phones: @company.phones, province_id: @company.province_id, review: @company.review, short_name: @company.short_name, township_id: @company.township_id, user_id: @company.user_id }
    end

    assert_redirected_to company_path(assigns(:company))
  end

  test "should show company" do
    get :show, id: @company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company
    assert_response :success
  end

  test "should update company" do
    patch :update, id: @company, company: { address: @company.address, business_name: @company.business_name, company_type_id: @company.company_type_id, contact_name: @company.contact_name, district_id: @company.district_id, email: @company.email, industry_id: @company.industry_id, phones: @company.phones, province_id: @company.province_id, review: @company.review, short_name: @company.short_name, township_id: @company.township_id, user_id: @company.user_id }
    assert_redirected_to company_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, id: @company
    end

    assert_redirected_to companies_path
  end
end
