class ThinkerSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :thoughts
end
