json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :address_id
  json.url customer_url(customer, format: :json)
end
