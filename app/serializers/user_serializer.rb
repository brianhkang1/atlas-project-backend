class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :pinned_locations

  has_many :created_trips
  has_many :liked_trips, through: :trip_likes
end
