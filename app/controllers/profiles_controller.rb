class ProfilesController < ApplicationController
  before_filter :authenticate_user!

  def show
  end

  def view
  end

  def update
    @profile = current_user.profile
    if @profile.update_attributes(params[:profile])
      flash[:notice] = "Profile updated successfully!"
      redirect_to '/profile'
    else
      flash.now[:error] = "Oops something went wrong! Want to try again?"
      redirect_to '/profile/edit'
    end
  end

  def new
    @profile = current_user.profile.new
  end

  def edit
    @profile = current_user.profile
    #if @user.profile.update_attributes(params[:profile])
    #  flash[:notice] = "Profile updated successfully!"
    #end
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
