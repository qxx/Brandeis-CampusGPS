class IndoorController < ApplicationController
  skip_before_filter :authorize
  def index
    @floors = Floor.where("floorplan like ?", "%Volen%")
    #@images = Dir.glob("app/assets/images/floorplans/*.jpg")
    if params[:id]
      @floors = Floor.where("floorplan like ?", "%#{params[:id]}%")
    end
    if params[:id] && params[:code_name] && params[:room_tag]
    @floorplan = Floor.find_by(code_name: params[:code_name]).floorplan

    @overlay_x = Room.find_by(doortag: params[:room_tag]).floorplan_x / 3264.0*100
    @overlay_y = Room.find_by(doortag: params[:room_tag]).floorplan_y / 2316.0*100
    else
      @floorplan = Floor.find_by_building_id(Building.find_by_code_name(params[:id])).floorplan
    end
  end


end
