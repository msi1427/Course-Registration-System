class Grading < ApplicationRecord
  validates :grade, :point, presence:true
  validates :grade, :point, uniqueness:true
end
