class IndoorController < ApplicationController
  skip_before_filter :authorize
  def index
    @floorplan = Floor.first.floorplan
  end
end
