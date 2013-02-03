class ProfilesController < ApplicationController
  before_filter :authenticate_user!

  def view
    @user = current_user
    if @user.profile.update_attributes(params[:profile])
      #flash[:notice] = "Profile updated successfully!"
    else
      flash[:error] = "update failed :("
      redirect_to '/profile/edit'
    end
  end

  def update
    @profile = current_user.profile
  end

  def new
    @profile = Profile.new
  end

  def edit
    @user = current_user
    if @user.profile.update_attributes(params[:profile])
      flash[:notice] = "Profile updated successfully!"
    end
    #if @user.profile.update_attributes(params[:profile])
    #  # Put a print statement here to see if this is triggering
    #  flash[:success] = "Profile updated successfully!"
    #  #redirect_to '/profile'
    #else
    #  flash[:error] = "Update Failed!"
    #  render 'profile/edit'
    #end
  end
    

end
