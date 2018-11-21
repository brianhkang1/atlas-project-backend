class Trip < ApplicationRecord
  has_many :trip_likes, :foreign_key => :liked_trip_id
  has_many :trip_likers, through: :trip_likes
  belongs_to :creator, :class_name => "User"

  has_many :itinerary_days
  has_many :photos

end
