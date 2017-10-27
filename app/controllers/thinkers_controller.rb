class ThinkersController < ApplicationController

	def show
		@thinker = Thinker.find(params[:id])
	end
end
