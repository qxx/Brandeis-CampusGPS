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
    
    require_relative './../../lib/astar.rb'  
    astar = Astar.new(neighbor_locations)
  end

  def get_distance(graph, location_start, location_end)
    graph.distance(location_start, location_end)
  end

  def get_location_start_and_end(graph, building_from, building_to)
    location_start = building_from.loc_id.first
    location_end = building_to.loc_id.first
    shortest_distance = graph.distance(location_start, location_end)
    
    building_from.loc_id.each do |entrance_from|
      building_to.loc_id.each do |entrance_to|
        if graph.distance(entrance_from, entrance_to) < shortest_distance
          location_start = entrance_from
          location_end = entrance_to
        end
      end
    end
    return location_start, location_end
  end

  def locations_to_paths(locations)
    paths = locations.map.with_index do |loc,i|
      if i == locations.length - 1
        nil
      else
        Path.find_by(start_location_id: locations[i].id, end_location_id: locations[i+1].id)
      end
    end
    paths.pop
    return paths
  end

  def gmap_build_markers(locations_shown, paths_shown)
    hash = Gmaps4rails.build_markers(locations_shown) do |location_shown, marker|
      marker.lat location_shown.latitude
      marker.lng location_shown.longitude
      if location_shown.loc_type == 'entrance'
        building = Building.find(Entrance.find_by(location_id:location_shown.id).building_id)
        marker.infowindow build_infostring(building)
        marker.title building.name
      else
        path = paths_shown.find {|p| p.start_location_id == location_shown.id}
        marker.infowindow build_infostring(path)
      end
    end
  end

  def build_infostring(object)
    "<img src=\"/assets/#{object.photo}\" class=\"img-infowindow\"><p>#{object.description}</p>"
  end

  def auto_complete(params)
    # If the autocomplete is used, it will send a parameter 'term', so we catch that here.  :term does
    # not have to be explicitly stated in the view, autocomplete automatically calls it :term.
    if params[:term]
      # Then we limit the number of records assigned to @building, by using the term value as a filter.
      building = Building.find(:all,:conditions => ['name LIKE ?', "#{params[:term]}%"])
    else
      building = Building.order(:name)
    end
    building_names = []
    Building.all.select(:name, :code_name).each do |building|
      building_names << { label: "#{building.name}", value: "#{building.name}"}
      building_names << { label: "#{building.code_name}", value: "#{building.name}"}
    end
    building_names.to_json
  end

end
