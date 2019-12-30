class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  def add_course(course)
  current_item = line_items.find_by(course_id: course.id)
  if !current_item
    current_item = line_items.build(course_id: course.id)
  end
  current_item
  end
  def total_credit
    line_items.to_a.sum { |item| item.course.credit }
  end
end
