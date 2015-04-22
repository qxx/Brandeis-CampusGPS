class Location < ActiveRecord::Base
  
  def to_locations
    [self]
  end

end
