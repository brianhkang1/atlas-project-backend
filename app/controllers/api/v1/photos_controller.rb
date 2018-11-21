class Api::V1::PhotosController < ApplicationController

  def create
    render json: Photo.create(photo_params)
  end

  private

  def photo_params
    params.require(:photo).permit(:trip_id, :image_url, :caption)
  end

end
