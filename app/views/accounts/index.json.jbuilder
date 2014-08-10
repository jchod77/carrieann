json.array!(@accounts) do |account|
  json.extract! account, :id, :title, :account_number, :type, :product_id, :owner_id, :agent_id
  json.url account_url(account, format: :json)
end
