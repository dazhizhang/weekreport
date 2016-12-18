json.array!(@weekly_publishes) do |weekly_publish|
  json.extract! weekly_publish, :id, :name, :publish_date
  json.url weekly_publish_url(weekly_publish, format: :json)
end
