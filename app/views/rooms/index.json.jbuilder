json.array!(@rooms) do |room|
  json.extract! room, :id, :name, :doortag, :floorplan_x, :floorplan_y, :floor_id, :building_id, :location_id
  json.url room_url(room, format: :json)
end
