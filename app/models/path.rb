class Path < ActiveRecord::Base
  validates :description, presence: true
  validates :distance, allow_blank: true, numericality: {greater_than_or_equal_to: 0}
  has_many :path_buildings
  has_many :buildings, through: :path_buildings
  has_many :route_constructors
  has_many :routes, through: :route_constructors

  def start_loc
    Building.find(self.start_location_id)
  end

  def end_loc
    Building.find(self.end_location_id)
  end
end
