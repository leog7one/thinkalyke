class AttendancesController < ApplicationController
	before_action :authenticate_thinker!

	def create
		@thought = Thought.find(params[:thought_id])

		@attendance = @thought.attendances.where(thinker: current_thinker).first_or_create

		if @attendance.save
			flash[:notice] = "You are now registered for this Thought!"
			redirect_to thinker_path(current_thinker)
		else
			flash.now[:alert] = "Thought registration failed."
			render 'thoughts/show'
		end
	end
end
