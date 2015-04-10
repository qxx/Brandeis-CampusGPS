

class OutdoorController < ApplicationController
  skip_before_filter :authorize
  include OutdoorHelper



  def index
    @buildings = Building.order(:name)

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
      @building_from = Building.find_by(name: params[:from]) 
      @building_from = ParkingLot.find_by(name: params[:from]) if @building_from.nil?
      @building_to = Building.find_by(name: params[:to])
      @building_to = ParkingLot.find_by name:(params[:to]) if @building_to.nil?
    end

    if @building_from.nil? || @building_to.nil?
      redirect_to outdoor_url
    end

    ## run algorithm
    if @building_from && @building_to && @building_from != @building_to
        check_graph
        location_start, location_end = get_location_start_and_end(@@astar, @building_from, @building_to)
        @locations = @@astar.astar(location_start, location_end)
        @paths = locations_to_paths(@locations)
    end
    
    ## Google map
    @hash = gmap_build_markers(@locations, @paths)

    ## auto complete
    @building_names = auto_complete(params)

    ## Show link to indoor
    if @building_to && @building_to.code_name == 'Volen'
      @has_floorplan = true
    end
  end # End of Action

  private
  
  def check_graph
    @@astar ||= create_graph
  end


end # End of Controller
