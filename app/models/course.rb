class Course < ApplicationRecord
  validates :title, :number, :department, :semester, :credit, presence:true
  validates :title, :number, uniqueness:true
  validates :semester, numericality:{greater_than: 0}
  validates :credit, numericality:{greater_than: 0.0}

end
