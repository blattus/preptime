class BuildingsController < ApplicationController

	def create
	end

	def new
		@building = @tournament.buildings.build
	end
end
