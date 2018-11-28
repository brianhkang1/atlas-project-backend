class TripSerializer < ActiveModel::Serializer
  attributes :id, :creator_id, :country_name, :summary

  belongs_to :creator
  has_many :photos
  has_many :itinerary_days
  has_many :trip_likers, through: :trip_likes
end
