json.array!(@locations) do |location|
  json.extract! location, :id, :latitude, :longitude, :loc_type
  json.url location_url(location, format: :json)
end
