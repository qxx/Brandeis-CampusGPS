class IndoorController < ApplicationController
  skip_before_filter :authorize
  def index
    @floors = Floor.where("floorplan like ?", "%Volen%")
    #@images = Dir.glob("app/assets/images/floorplans/*.jpg")
    if params[:id]
      @floors = Floor.where("floorplan like ?", "%#{params[:id]}%")
    end
    @floorplan = Floor.find(params[:floor_id]).floorplan

    @overlay_x = Room.find_by(doortag: params[:room_tag]).floorplan_x / 4
    @overlay_y = Room.find_by(doortag: params[:room_tag]).floorplan_y / 4
  end


end
