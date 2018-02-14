json.extract! user, :id, :first_name, :last_name, :role, :skills, :portfolio, :linkedin, :email, :photo, :created_at, :updated_at
json.url user_url(user, format: :json)
