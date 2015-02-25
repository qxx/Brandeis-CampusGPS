json.array!(@entrances) do |entrance|
  json.extract! entrance, :id, :photo, :building_id
  json.url entrance_url(entrance, format: :json)
end
