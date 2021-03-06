json.array!(@candidates) do |candidate|
  json.extract! candidate, :id, :user_id, :forenames, :surnames, :sex_id, :birthdate, :marital_status_id, :document_type_id, :document_id, :email, :nationality_id, :province_id, :district_id, :township_id, :address, :presentation, :wage_aspiration, :professional_title, :driver_license_id
  json.url candidate_url(candidate, format: :json)
end
