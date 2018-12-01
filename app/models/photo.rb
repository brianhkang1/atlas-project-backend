class Photo < ApplicationRecord
  mount_uploader :image_url, ImageUrlUploader
  belongs_to :trip

  # validations
    validates :trip_id, presence: true, numericality: { only_integer: true }
    validates :image_url, presence: true 


end
