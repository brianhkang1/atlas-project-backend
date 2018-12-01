class PinnedLocation < ApplicationRecord
  belongs_to :user

  # validations
  validates :latitude, presence: true, numericality: true
  validates :longitude, presence: true, numericality: true
  validates :user_id, presence: true, numericality: {only_integer: true}
end
