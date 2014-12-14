json.array!(@articles) do |article|
  json.extract! article, :id, :title, :content, :post_time
  json.url article_url(article, format: :json)
end
