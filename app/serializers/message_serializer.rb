class MessageSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :author
end
