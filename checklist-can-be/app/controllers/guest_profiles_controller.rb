class GuestProfilesController < ApplicationController
  def create
    user = User.create_guest
    session[:user_id] = user.id
    redirect_to root_url
  end
end
