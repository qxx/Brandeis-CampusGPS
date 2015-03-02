class AdminController < ApplicationController
  def index
  	@admins = Admin.order(:name)
  end
end
