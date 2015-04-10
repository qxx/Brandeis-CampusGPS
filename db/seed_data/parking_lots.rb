module ParkingLotSeeds
  def ParkingLotSeeds.l(name)
    Location.find_by!(code_name:name)
  end

PARKINGLOTS = [
  {
    name: "Theater Lot",
    location_id: ParkingLotSeeds.l('TheaterLot_p1').id,
    photo: nil
  }
]
end