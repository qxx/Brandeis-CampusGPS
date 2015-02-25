json.array!(@paths) do |path|
  json.extract! path, :id, :description, :distance, :start_Location_id, :end_Location_id, :direction, :PathPhotos_id
  json.url path_url(path, format: :json)
end
