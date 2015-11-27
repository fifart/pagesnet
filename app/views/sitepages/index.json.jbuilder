json.array!(@sitepages) do |sitepage|
  json.extract! sitepage, :id, :title, :body
  json.url sitepage_url(sitepage, format: :json)
end
