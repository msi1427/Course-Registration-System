class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :avatar, AvatarUploader
  has_many :line_items
  validates :name, :std_id, :department, :semester, :email, :role,  presence:true
  validates :std_id, :email, uniqueness:true
  validates :semester, :std_id, numericality:{greater_than: 0}
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
