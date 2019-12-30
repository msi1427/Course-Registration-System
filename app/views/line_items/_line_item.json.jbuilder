json.extract! line_item, :id, :course_id, :cart, :to, :created_at, :updated_at
json.url line_item_url(line_item, format: :json)
