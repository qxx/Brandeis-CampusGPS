class OutdoorController < ApplicationController
  skip_before_filter :authorize

  def index
    @buildings = Building.order(:name)

    # Google Map
    @users = [Location.find(Building.first.loc_id), Location.find(Building.last.loc_id)]
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
  		marker.lat user.latitude
  		marker.lng user.longitude
  		#marker.infowindow user.description
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
    if params[:from]
      @building_from = Building.all.find_by name:(params[:from])
    end
    if params[:to]
      @building_to = Building.all.find_by name:(params[:to])
    end
    if @building_from && @building_to
      @paths = Path.where(start_Location_id: @building_from.loc_id, end_Location_id: @building_to.loc_id)
    end
  end

end
