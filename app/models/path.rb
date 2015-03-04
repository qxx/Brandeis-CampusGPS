class Path < ActiveRecord::Base
  validates :description, presence: true
  validates :distance, allow_blank: true, numericality: {greater_than_or_equal_to: 0}
  has_many :path_buildings
  has_many :buildings, through: :path_buildings

  def start_loc
    Building.find(self.start_Location_id)
  end

  def end_loc
    Building.find(self.end_Location_id)
  end
end
