class ProfilesController < ApplicationController
  before_filter :authenticate_user!

  def view
  end

  def edit
    @profile = current_user.profile
  end

  def new
    @profile = Profile.new
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update_attributes(params[:profile])
      flash[:success] = "Profile updated successfully!"
      redirect_to root_path
    else
      flash[:error] = "Update Failed!"
      render 'profile/edit'
    end
  end
    

end
