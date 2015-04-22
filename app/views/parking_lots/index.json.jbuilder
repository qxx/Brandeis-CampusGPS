json.array!(@parking_lots) do |parking_lot|
  json.extract! parking_lot, :id, :name, :location_id, :photo
  json.url parking_lot_url(parking_lot, format: :json)
end
