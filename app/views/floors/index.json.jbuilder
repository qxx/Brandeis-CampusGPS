json.array!(@floors) do |floor|
  json.extract! floor, :id, :level, :floorplan, :building_id
  json.url floor_url(floor, format: :json)
end
