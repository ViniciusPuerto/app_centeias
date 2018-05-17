json.extract! user, :id, :nome, :registro, :cargo, :email, :pin, :created_at, :updated_at
json.url user_url(user, format: :json)
 