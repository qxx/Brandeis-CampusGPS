class AdminController < ApplicationController
  def index
    @total_users = User.count
    @total_locations = Location.count
    @total_entrances = Entrance.count
    @total_buildings = Building.count
    @total_paths = Path.count
    @total_routes = Route.count
  end
end
