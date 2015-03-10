json.array!(@routes) do |route|
  json.extract! route, :id, :start_location_id, :end_location_id, :distance
  json.url route_url(route, format: :json)
end
