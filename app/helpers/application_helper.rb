module ApplicationHelper

	def time_format(thought_date)
		thought_date.strftime("%A, %b %e %Y %l:%M %p ")
	end
end
