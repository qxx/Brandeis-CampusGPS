class IndoorController < ApplicationController
  skip_before_filter :authorize
  def index

    @building = Building.find_by(code_name: params[:building])
    @floors = @building.floors    

    if params[:room].to_s != ""
      room = @building.rooms.find_by(name: params[:room])
      room = @building.rooms.find_by(doortag: params[:room]) if room.nil?
      if room.nil?
        flash[:notice] = "Room \"#{params[:room]}\" not found."
        redirect_to(indoor_index_path(building:params[:building], directed_from:params[:directed_from]))
        return
      end
      @floorplan = room.floor.floorplan

      # calculate overlay coordinates in percentage, shift by (-2%, -6%) to center the marker
      @overlay_x = room.floorplan_x / 3264.0 * 100 - 2
      @overlay_y = room.floorplan_y / 2316.0 * 100 - 6
    else
      @floorplan = @floors.first.floorplan
    end
    @directed_from = params[:directed_from]
    if @directed_from.to_s != ""
      @from, @to = @directed_from.split(",,")
    end
  end


end
