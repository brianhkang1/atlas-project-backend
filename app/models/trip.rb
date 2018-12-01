class Trip < ApplicationRecord
  has_many :trip_likes, :foreign_key => :liked_trip_id
  has_many :trip_likers, through: :trip_likes
  belongs_to :creator, :class_name => "User"
  has_many :itinerary_days
  has_many :photos

  # validations
  validates :creator_id, presence: true, numericality: { only_integer: true }
  validates :country_name, presence: true
  validates :summary, presence: true


end
