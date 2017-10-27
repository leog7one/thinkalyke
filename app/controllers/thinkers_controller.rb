class ThinkersController < ApplicationController

	def show
		@thinker = Thinker.find(params[:id])
		@thought = Thought.find(params[:id])
	end
end
