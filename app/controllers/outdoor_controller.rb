 

class OutdoorController < ApplicationController
  skip_before_filter :authorize
  include OutdoorHelper


  def index
    @buildings = Building.order(:name)
    @nearest_locations = Location.all

    # Google Map
    @users = [Building.first]
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
  		marker.lat 42.366629
  		marker.lng -71.259510
#  		marker.infowindow user.description
	  end

    ## autocomplete
    @building_names = auto_complete(params)

  end


  def routing
    ## Get buildings from params
    
    if params[:from] && params[:to]
      if params[:from] .start_with?('(') 
        pickup = params[:from].split(", ");
        @lat_pickup = pickup[0];
        @lat_pickup[0] = '';
        @lng_pickup = pickup[1];
        if @lng_pickup[-9].to_i >= 5 
          digit = @lng_pickup[-10].to_i
          digit += 1
          @lng_pickup[-10] = digit.to_s
        end
        @lng_pickup[-9..-1] = '';
        @location_pickup = Location.find_by(latitude: @lat_pickup, longitude: @lng_pickup)
      end
      @building_from = Building.find_by(name: params[:from]) 
      @building_from = ParkingLot.find_by(name: params[:from]) if @building_from.nil?
      @building_to = Building.find_by(name: params[:to])
      @building_to = ParkingLot.find_by name:(params[:to]) if @building_to.nil?
    end

    if @building_from.nil? && @location_pickup.nil? || @building_to.nil?
      redirect_to outdoor_url
    end

    ## run algorithm
    if (@building_from || @location_pickup) && @building_to && @building_from != @building_to
        check_graph
        @locations_end = @building_to.to_locations
        if @location_pickup
          @locations_start = [ @location_pickup ]
        else
          @locations_start = @building_from.to_locations 
        end
        location_start, location_end = get_location_start_and_end(@@astar, @locations_start, @locations_end)  
        @locations = @@astar.astar(location_start, location_end)       
        if @locations.nil?
          redirect_to outdoor_url
        end
        @paths = locations_to_paths(@locations)
    end
    
    ## Google map
    @hash = gmap_build_markers(@locations, @paths)

    ## auto complete
    @building_names = auto_complete(params)

    ## Show link to indoor
    if @building_to.class == Building && @building_to.code_name == 'Volen'
      @has_floorplan = true
    end
  end # End of Action

  private
  
  def check_graph
    @@astar ||= create_graph
  end


end # End of Controller
