class ProfilesController < ApplicationController
  before_filter :authenticate_user!

  def view
  end

  def new
  	@profile = Profile.new
  end

  def edit
  	#@profile = Profile.new
  	#if @profile.save
  	#	redirect_to @profile
  	#end
  end

end
