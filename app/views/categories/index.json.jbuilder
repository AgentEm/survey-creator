json.array!(@categories) do |category|
  json.extract! category, :id, :name, :color, :icon_id
  json.url category_url(category, format: :json)
end
