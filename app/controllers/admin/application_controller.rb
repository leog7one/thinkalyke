class Admin::ApplicationController < ApplicationController

	before_action :authorize_admin!

  def index
  end



	private

	def authorize_admin!
		authenticate_thinker!

		unless current_thinker.admin?
			flash[:alert] = "You do not have permission to perform this action"
			redirect_to thoughts_path
		end
	end
end
