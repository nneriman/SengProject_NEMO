json.array!(@photos) do |photo|
  json.extract! photo, :id, :title, :post_time, :description
  json.url photo_url(photo, format: :json)
end
