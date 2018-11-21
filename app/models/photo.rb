class Photo < ApplicationRecord
  mount_uploader :image_url, ImageUrlUploader

  belongs_to :trip
end
