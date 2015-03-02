json.array!(@admins) do |admin|
  json.extract! admin, :id, : name, :hashed_password, :salt
  json.url admin_url(admin, format: :json)
end
