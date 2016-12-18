class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  extend Enumerize

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
belongs_to :role

before_create :set_default_role

# def has_role?(name)
#   self.role.name == name?
# end

  has_many :posts, dependent: :nullify
  
  enumerize :status, in: {inactive: -1, pending: 0, active: 1}, predicates: { prefix: true }

  private
  def set_default_role
    self.role ||= Role.find_by_name('registered')
  end
end
