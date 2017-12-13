class ThinkersController < ApplicationController

	def show
		@thinker = Thinker.find(params[:id])
		@comments = @thinker.comments
		respond_to do |f|
			f.html { render :show }
			f.json { render json: @thinker }
		  end
	end
end
