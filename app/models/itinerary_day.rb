class ItineraryDay < ApplicationRecord
  belongs_to :trip

  # validations
  validates :trip_id, presence: true, numericality: { only_integer: true }
  validates :day, presence: true, numericality: { only_integer: true }
  validates :location, presence: true
  validates :description, presence: true


end
