class TripSerializer < ActiveModel::Serializer
  attributes :id, :creator_id, :location, :summary

  belongs_to :creator
  has_many :photos
  has_many :itinerary_days
  has_many :trip_likers, through: :trip_likes
end
