json.array!(@posts) do |post|
  json.extract! post, :id, :title, :content, :category_id, :status, :author, :edit_by
  json.url post_url(post, format: :json)
end
