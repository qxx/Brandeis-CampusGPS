class OutdoorController < ApplicationController
  skip_before_filter :authorize

  def index
  	@users = Building.all
    @buildings = Building.order(:name)
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
  		marker.lat user.latitude
  		marker.lng user.longitude
  		marker.infowindow user.description
	  end
  end

  #
#
#
#
#
#
  def routing
    @buildingsfrom = Building.all.order(:name)
    @buildingsto = Building.all.order(:name)
    if params[:from]
      @buildingsfrom = Building.all.find_by name:(params[:from])
    else
      @buildingsfrom = Building.all.order(:name)
    end
    if params[:to]
      @buildingsto = Building.all.find_by name:(params[:to])
    else
      @buildingsto = Building.all.order(:name)
    end
  end

#
#
#
#
#
#

end
