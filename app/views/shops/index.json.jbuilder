json.array!(@shops) do |shop|
  json.extract! shop, :id, :name, :description, :description_detail
  json.url shop_url(shop, format: :json)
end
