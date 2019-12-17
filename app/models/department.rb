class Department < ApplicationRecord
  validates :name, :head, presence:true
  validates :name, :head, uniqueness:true

end
