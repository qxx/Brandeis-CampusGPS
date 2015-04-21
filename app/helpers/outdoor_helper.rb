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
    
    require "#{Rails.root}/lib/astar.rb"  
    astar = Astar.new(neighbor_locations)
  end

  def get_distance(graph, location_start, location_end)
    graph.distance(location_start, location_end)
  end

  def get_location_start_and_end(graph, locations_start, locations_end)
    #locations_start = building_from.to_locations
    #locations_end = building_to.to_locations

    location_start = locations_start[0]
    location_end = locations_end[0]

    shortest_distance = graph.distance(location_start, location_end)

    locations_start.each do |entrance_from|
      locations_end.each do |entrance_to|
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

      path = paths_shown.find {|p| p.start_location_id == location_shown.id}
      if path.nil?
        marker.infowindow build_infostring(location_shown) 
      else
        marker.infowindow build_infostring(path)
      end
    end
  end

  def build_infostring(object)
    str = ""
    return str if object.nil?
    if object.class == Path || object.class == ParkingLot || object.class ==Building
      unless object.photo.nil?
        # I know it's weird to use a image_tag helper to build a string outside the controller
        # then pass the string to the controller so that it can be used by javascript
        # and finally show on the map which is in the view.
        str += ActionController::Base.helpers.image_tag(object.photo, class: "img-infowindow")
      end
    end
    if object.class == ParkingLot || object.class == Building
      str +=  "<p>#{object.name}</p>"
    end
    if object.class == Building || object.class == Path
      str += "<p>#{object.description}</p>"
    end
    return str
  end

  def auto_complete(params)
    building_names = []
    Nickname.all.select(:name, :building_id).each do |building|
      building_names << { label: "#{building.name}", value: "#{(Building.find(building.building_id)).name}"}
      #building_names << { label: "#{building.code_name}", value: "#{building.name}"}
    end
    ParkingLot.all.select(:name).each do |parking_lot|
      building_names << { label: "#{parking_lot.name}", value: "#{parking_lot.name}"}
    end
    building_names.to_json
  end

end
