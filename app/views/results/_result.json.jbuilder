json.extract! result, :id, :student_id, :name, :semester, :course_code, :course_name, :grade, :point, :created_at, :updated_at
json.url result_url(result, format: :json)
