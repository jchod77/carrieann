json.array!(@clients) do |client|
  json.extract! client, :id, :first_name, :last_name, :ssn, :birth_date, :company_id, :title, :influencer?, :decision_maker, :address_id, :location_id, :mobile_phone, :home_phone, :work_phone, :work_extention, :primary_email, :secondary_email, :active_employee?
  json.url client_url(client, format: :json)
end
