class Message < ActiveRecord::Base
  has_many :message_user_refs, dependent: :destroy
  has_many :users, through: :message_user_refs, dependent: :destroy
end
