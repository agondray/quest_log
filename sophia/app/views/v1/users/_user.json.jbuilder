json.extract! user, :username, :email
json.url v1_user_url(user, format: :json)
