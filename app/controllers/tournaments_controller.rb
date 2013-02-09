class TournamentsController < ApplicationController

	def show
		@tournament = tournaments.find_by_id(params[:tournament])
	end

	def create
	end
end
