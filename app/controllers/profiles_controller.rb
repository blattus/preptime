class ProfilesController < ApplicationController
  def view
  end

  def edit
  	@profile = Profile.new
  end

end
