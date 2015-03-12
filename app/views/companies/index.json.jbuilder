json.array!(@companies) do |company|
  json.extract! company, :id, :short_name, :business_name, :company_type_id, :industry_id, :review, :province_id, :district_id, :township_id, :address, :contact_name, :email, :phones, :user_id
  json.url company_url(company, format: :json)
end
