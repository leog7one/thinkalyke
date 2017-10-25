class Comment < ActiveRecord::Base
  belongs_to :thought

  validates :body, presence: true
end
