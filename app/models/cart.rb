class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  #has_many :users
  def add_course(course,user)
    current_items = nil
    course.each do |course|
      current_items = line_items.create(course_id: course.id, user_id: user.id)
    end
    current_items
  end

  def total_credit
    line_items.to_a.sum { |item| item.course.credit }
  end
end
