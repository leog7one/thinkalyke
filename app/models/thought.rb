class Thought < ActiveRecord::Base
	belongs_to :thinker, foreign_key: "thinker_id"
	belongs_to :category
	has_many :comments, dependent: :destroy

	validates :title, presence: true, length: {minimum: 5}
	validates :description, presence: true
	validates :venue, presence: true
	validates :location, presence: true
end
