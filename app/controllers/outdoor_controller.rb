require_relative './../../lib/astar.rb'

class OutdoorController < ApplicationController
  skip_before_filter :authorize

  def index
    @buildings = Building.order(:name)

    # Google Map
    @users = [Building.first]
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
  		marker.lat 42.366629
  		marker.lng -71.259510
#  		marker.infowindow user.description
	  end
      # If the autocomplete is used, it will send a parameter 'term', so we catch that here.  :term does
      # not have to be explicitly stated in the view, autocomplete automatically calls it :term.
      if params[:term]
      # Then we limit the number of records assigned to @building, by using the term value as a filter.
        @building = Building.find(:all,:conditions => ['name LIKE ?', "#{params[:term]}%"])
      else
        @building = Building.all.first
      end
      @building_names = Building.all.select(:name).map{|building| "#{building.name}"} 
  end

#  def routing
#    @buildingsfrom = Building.all.order(:name)
#    @buildingsto = Building.all.order(:name)
#    if params[:from]
#      @buildingsfrom = Building.all.find_by name:(params[:from])
#    else
#      @buildingsfrom = Building.all.order(:name)
#    end
#    if params[:to]
#      @buildingsto = Building.all.find_by name:(params[:to])
#    else
#      @buildingsto = Building.all.order(:name)
#    end
#  end

  def routing
    @buildings = Building.order(:name)
    if params[:from]
      @building_from = Building.find_by name:(params[:from])
    end
    if params[:to]
      @building_to = Building.find_by name:(params[:to])
    end

    if @building_from && @building_to && @building_from != @building_to
      #route = Route.where(start_location_id: @building_from.loc_id, end_location_id: @building_to.loc_id).first
      #if route.nil?
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

        @location_start = @building_from.loc_id.first
        @location_end = @building_to.loc_id.first
        shortest_distance = search.distance(@location_start, @location_end)
        @building_from.loc_id.each do |entrance_from|
          @building_to.loc_id.each do |entrance_to|
            if search.distance(entrance_from, entrance_to) < shortest_distance
              @location_start = entrance_from
              @location_end = entrance_to
            end
          end
        end
        
        search_result = search.astar(@location_start, @location_end)
        @locations = search_result
        
        @paths = @locations.map.with_index do |loc,i|
          if i == @locations.length - 1
            nil
          else
            Path.find_by(start_location_id: @locations[i].id, end_location_id: @locations[i+1].id)
          end
        end
        @paths.pop
       
      #else
        #@paths = route.paths
        #@locations = @paths.map do |p|
          #p.start_location_id
        #end
        #@locations << @paths.last.end_location_id
      #end
    end
    if @locations.nil? 
      @locations = [Location.find(@building_from.loc_id)]
      @centerMarker = 0
    end

    @from_track = @building_from ? @building_from.id : 0
    @to_track = @building_to ? @building_to.id : 0

    @locations_shown = [@location_start, @location_end].compact
    @hash = Gmaps4rails.build_markers(@locations_shown) do |location_shown, marker|
      marker.lat location_shown.latitude
      marker.lng location_shown.longitude
      marker.infowindow Building.find(Entrance.find_by(location_id:location_shown.id).building_id).description

    end

    # If the autocomplete is used, it will send a parameter 'term', so we catch that here.  :term does
    # not have to be explicitly stated in the view, autocomplete automatically calls it :term.
      if params[:term]
    # Then we limit the number of records assigned to @building, by using the term value as a filter.
        @building = Building.find(:all,:conditions => ['name LIKE ?', "#{params[:term]}%"])
      else
        @building = Building.all.first
      end
      @building_names = Building.all.select(:name).map{|building| "#{building.name}"} 
  end

end
