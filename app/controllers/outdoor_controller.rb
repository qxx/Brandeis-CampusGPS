 

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
    ## Get locations from params
    # .to_s == "" is to test nil or empty
    if params[:from].to_s != "" && params[:to].to_s != "" && params[:from] != params[:to]
      if params[:from] .start_with?('(') 
        @location_pickup = get_location_pickup(params[:from])
      else
        @building_from = find_building_or_parking_lot(params[:from])
      end      
      @building_to = find_building_or_parking_lot(params[:to]) 
    else
      redirect_to outdoor_url
      return
    end

    # get the start and end location for the algorithm
    check_graph

    begin
      locations_start = get_locations_start_or_end(@location_pickup, @building_from)
      locations_end = get_locations_start_or_end(@building_to)
      location_start, location_end = get_location_start_and_end(@@astar, locations_start, locations_end)
    rescue RuntimeError => e
      redirect_to outdoor_url
      return
    end  

    ## run algorithm
    @locations = @@astar.astar(location_start, location_end)

    if @locations.nil?
      redirect_to outdoor_url
      return
    end

    @paths = locations_to_paths(@locations)
        
    ## Google map
    @hash = gmap_build_markers(@locations, @paths)

    ## auto complete
    @building_names = auto_complete(params)

    ##
    @directed_from = "#{params[:from]},,#{params[:to]}"

  end # End of Action

  private
  
  def check_graph
    @@astar ||= create_graph
  end


end # End of Controller
