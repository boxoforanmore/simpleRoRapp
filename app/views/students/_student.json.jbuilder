json.extract! student, :id, :name, :email, :major, :minor, :year, :graduation, :created_at, :updated_at
json.url student_url(student, format: :json)
