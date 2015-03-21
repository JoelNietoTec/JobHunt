json.array!(@vacants) do |vacant|
  json.extract! vacant, :id, :company_id, :position, :professional_area_id, :job_type_id, :wage, :due_date, :country_id, :province_id, :district_id, :job_description, :vacant_status_id
  json.url vacant_url(vacant, format: :json)
end
