class AdminController < ApplicationController
  def index
    @total_users = User.count
    @total_buildings = Building.count
    @total_paths = Path.count
  end
end
