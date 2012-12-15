class MemberProfilesController < ApplicationController
  def new
    @member_profile = MemberProfile.new
  end

  def create
    current_user.change_to_member
    @member_profile = current_user.details
    @member_profile.assign_attributes(params[:member_profile])
    if current_user.save
      redirect_to root_url
    else
      render "new"
    end
  end
end
