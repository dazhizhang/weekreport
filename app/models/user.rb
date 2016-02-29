class User < ActiveRecord::Base
  extend Enumerize

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  belongs_to :role
  has_many :posts, dependent: :nullify
  has_many :message_user_refs, dependent: :destroy

  enumerize :status, in: {inactive: -1, pending: 0, active: 1}, predicates: { prefix: true }

end
