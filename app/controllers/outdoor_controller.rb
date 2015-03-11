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
      @building_from = Building.find(params[:from])
    end
    if params[:to]
      @building_to = Building.find(params[:to])
    end

    if @building_from && @building_to && @building_from != @building_to
      route = Route.where(start_location_id: @building_from.loc_id, end_location_id: @building_to.loc_id).first
      @paths = route.paths if route
    end

    @from_track = @building_from ? @building_from.id : 0
    @to_track = @building_to ? @building_to.id : 0

    @users = [@building_from, @building_to].compact
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.infowindow user.description
    end

    if @building_from.nil? && @building_to.nil?
      @centerMarker = 0
    elsif @building_from.nil?
      @centerMarker = @to_track -1
    else
      @centerMarker = @from_track -1
    end

  end

end
