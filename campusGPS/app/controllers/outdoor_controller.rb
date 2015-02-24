class OutdoorController < ApplicationController
  def index
    @buildings = Building.order(:name)
  end
end
