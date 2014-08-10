json.array!(@companies) do |company|
  json.extract! company, :id, :name, :ein, :multiple_locations?
  json.url company_url(company, format: :json)
end
