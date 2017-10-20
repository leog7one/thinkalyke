class Thought < ActiveRecord::Base

	validates :title, presence: true, length: {minimum: 5}
	validates :description, presence: true
	validates :venue, presence: true
	validates :location, presence: true
end
