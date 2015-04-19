require "#{Rails.root}/lib/movable.rb"

Path.where("distance IS ?", nil).each do |path|
    path.update(distance: Movable.distance(path.start_location, path.end_location))
end