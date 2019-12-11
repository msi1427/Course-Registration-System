json.extract! course, :id, :title, :number, :department, :semester, :credit, :created_at, :updated_at
json.url course_url(course, format: :json)
