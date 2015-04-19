require "#{Rails.root}/lib/movable.rb"

beginning = Path.first.start_location
ending = Path.first.end_location

puts Movable.distance(beginning, ending)