module OutdoorHelper
  def create_graph
    neighbor_locations = {}
    Location.all.each do |l|
      neighbor_locations[l] = []
    end

    Path.all.each do |p|
      start_loc = Location.find(p.start_location_id)
      end_loc = Location.find(p.end_location_id)
      neighbor_locations[start_loc] << end_loc
    end
      
    search = Astar.new(neighbor_locations)
  end
end
