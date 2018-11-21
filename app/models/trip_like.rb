class TripLike < ApplicationRecord
  belongs_to :trip_liker, :class_name => "User"
  belongs_to :liked_trip, :class_name => "Trip"
end
