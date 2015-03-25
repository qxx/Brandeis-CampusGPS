class IndoorController < ApplicationController
  skip_before_filter :authorize
  def index
    @floorplan = Floor.first.floorplan
    @floors = Floor.where("floorplan like ?", "%Volen%")
    @images = Dir.glob("app/assets/images/floorplans/*.jpg")
 	if params[:floorplan]
		@floorplan = (Floor.find_by floorplan:("floorplans/#{params[:floorplan]}.jpg")).floorplan
	end
  end


end
