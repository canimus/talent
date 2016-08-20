json.array!(@addresses) do |address|
  json.extract! address, :id, :street, :suburb, :state, :post_code, :country
  json.url address_url(address, format: :json)
end
