class PinnedLocation < ApplicationRecord
  belongs_to :user

  # validations
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :country, presence: true
  validates :user_id, presence: true, numericality: {only_integer: true}
end
