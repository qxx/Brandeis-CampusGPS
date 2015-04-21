json.array!(@nicknames) do |nickname|
  json.extract! nickname, :id, :name, :building_id
  json.url nickname_url(nickname, format: :json)
end
