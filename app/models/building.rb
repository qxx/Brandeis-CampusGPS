class Building < ActiveRecord::Base
  # validates :name, presence: true, uniqueness: true
  has_many :entrances
  has_many :path_buildings
  has_many :paths, through: :path_buildings

  def loc_id
    Entrance.where(building_id: self.id).first.location_id
  end
end
