class OutdoorController < ApplicationController
  def index
  	@users = Building.all
    @buildings = Building.order(:name)
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
  		marker.lat user.latitude
  		marker.lng user.longitude
  		marker.infowindow user.description
	end
  end
end
