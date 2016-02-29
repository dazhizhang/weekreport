class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :status, :author, :edit_by
  has_one :category
end
