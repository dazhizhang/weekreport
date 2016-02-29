json.array!(@messages) do |message|
  json.extract! message, :id, :title, :content, :author
  json.url message_url(message, format: :json)
end
