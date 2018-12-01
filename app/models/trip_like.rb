class TripLike < ApplicationRecord
  belongs_to :trip_liker, :class_name => "User"
  belongs_to :liked_trip, :class_name => "Trip"

  # validations
    validates :trip_liker_id, presence: true, numericality: { only_integer: true }
    validates :liked_trip_id, presence: true, numericality: { only_integer: true }
end
