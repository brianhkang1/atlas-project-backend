class TripLikeSerializer < ActiveModel::Serializer
  attributes :id, :trip_liker_id, :liked_trip_id
end
