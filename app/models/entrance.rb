class Entrance < ActiveRecord::Base
  belongs_to :building
  belongs_to :location
end
