json.array!(@items) do |item|
  json.extract! item, :id, :references, :title, :price, :summary, :detail
  json.url item_url(item, format: :json)
end
