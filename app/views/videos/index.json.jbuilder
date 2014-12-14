json.array!(@videos) do |video|
  json.extract! video, :id, :title, :post_time
  json.url video_url(video, format: :json)
end
