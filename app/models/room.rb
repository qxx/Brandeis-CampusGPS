class Room < ActiveRecord::Base
  belongs_to :floor
  belongs_to :building
  belongs_to :location
end
