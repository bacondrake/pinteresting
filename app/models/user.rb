class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :pins

  validates :name, presence: true
  # validates that a name has been entered
  # validates :name, uniqueness: { case_sensitive: false }
  # validates that no other user has taken the name (case insensitive)
end
