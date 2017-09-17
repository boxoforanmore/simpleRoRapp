json.extract! course, :id, :name, :number, :department, :credit, :semester, :year, :created_at, :updated_at
json.url course_url(course, format: :json)
