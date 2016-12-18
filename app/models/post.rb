class Post < ActiveRecord::Base
  extend Enumerize

  belongs_to :category
  # belongs_to :author, class_name: :user, foreign_key: :author
  # belongs_to :editor, class_name: :user, foreign_key: :edit_by
  belongs_to :user
  
  enumerize :status, in: {draft: 0, published: 1}, predicates: true

  mount_uploader :avatar,  AvatarUploader
  mount_uploader :audiofile, AvatarUploader
  
end
