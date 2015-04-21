class ParkingLot < ActiveRecord::Base
  belongs_to :location

  def to_locations
    [self.location]
  end
end
