class IndoorController < ApplicationController
  skip_before_filter :authorize
  def index
    @floors = Floor.where("floorplan like ?", "%Volen%")
    #@images = Dir.glob("app/assets/images/floorplans/*.jpg")
    if params[:id]
      @floors = Floor.where("floorplan like ?", "%#{params[:id]}%")
    end
    @floorplan = @floors.first.floorplan

    @overlay_x = 200
    @overlay_y = 200
  end


end
