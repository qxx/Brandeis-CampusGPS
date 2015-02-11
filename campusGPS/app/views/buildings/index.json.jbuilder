json.array!(@buildings) do |building|
  json.extract! building, :id, :id, :name, :description, :photo
  json.url building_url(building, format: :json)
end
