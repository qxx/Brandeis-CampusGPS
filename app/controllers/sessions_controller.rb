class SessionsController < ApplicationController
  skip_before_filter :authorize

  def new
  end

  def create
    user = User.find_by(name: params[:password])
    if user and user.authenticate(params[:password])
      seesion[:user_id] = user_id
      redirect_to admin_url
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to outdoor_url, notice: "Logged out"
  end
end
