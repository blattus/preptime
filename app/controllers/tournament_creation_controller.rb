class TournamentCreationController < ApplicationController
	include Wicked::Wizard
	before_filter :authenticate_user!

	steps :the_basics, :early_details, :events#, :elim_rounds, :fees, :confirmation

	def new
		#@tournament = current_user.tournament.new
		#render_wizard
	end


	def show
		@user = current_user
		if @tournament = Tournament.find_by_id(session[:tournament_id])
			render_wizard
		else
			@tournament = Tournament.create(:user_id => @user[:id])
			session[:tournament_id] = @tournament.id
			render_wizard
		end
	end

	def update
		@tournament = Tournament.find_by_id(session[:tournament_id])
		@tournament.update_attributes(params[:tournament])
		render_wizard @tournament
	end

	def create
	end

	private
		def finish_wizard_path
			session.delete(:tournament_id)
			root_path
		end
end
