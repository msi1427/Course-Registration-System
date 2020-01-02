class Result < ApplicationRecord
  def self.add_result(cart,grades)
    current_item = nil
    user_id = 0
    grades.each_index do |x|
      #puts("#{cart.line_items[x].user.id}")
      #puts("#{cart.line_items[x].user.name}")
      #puts("#{cart.line_items[x].user.semester}")
      #puts("#{cart.line_items[x].course.number}")
      #puts("#{cart.line_items[x].course.title}")
      user_id = cart.line_items[x].user.id
      pt = Grading.find_by(grade: grades[x])
      #puts("#{grades[x]}")
      #puts("#{pt.point}")
      current_item = Result.create(student_id: cart.line_items[x].user.std_id, name: cart.line_items[x].user.name, semester: cart.line_items[x].user.semester,
                                   course_code: cart.line_items[x].course.number, course_name: cart.line_items[x].course.title, grade: grades[x], point: pt.point,
                                   course_credit: cart.line_items[x].course.credit)
    end
    user = User.find_by(id: user_id)
    User.where(:id => user.id).update(:semester => user.semester+1)
    current_item
  end

  def self.check_result(grades)
    grades.each_index do |x|
      if grades[x] == 'F'
        return false
      end
    end
    return true
  end

end
