class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, :std_id, :department, :semester, :email, :role, :password,  presence:true
  validates :std_id, :email, uniqueness:true
  validates :semester, :std_id, numericality:{greater_than: 0}
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
