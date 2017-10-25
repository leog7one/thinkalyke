class CommentsController < ApplicationController
	before_action :authenticate_thinker!

	def create
		@thought = Thought.find(params[:thought_id])
		@comment = @thought.comments.build(comment_params)

		if @comment.save
			flash[:notice] = "Comment Created!"
			redirect_to thought_path(@comment.thought)
		else
			flash.now[:alert] = "Comment Not Created!"
			render 'thoughts/show'
		end
	end

	def comment_params
		params.require(:comment).permit(:body)
	end

end
