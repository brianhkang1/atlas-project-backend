class Api::V1::PinnedLocationsController < ApplicationController

  def create
    @pinned_location = PinnedLocation.create(pinned_location_params)
    if @pinned_location.persisted?
      render json: @pinned_location
    else
      render json: {error: "failed to post"}, status: :not_acceptable
    end
  end

  def destroy
    @pinned_location = PinnedLocation.find(params[:id])
    @pinned_location.destroy 
  end

  private

  def pinned_location_params
    params.require(:pinned_location).permit(:longitude, :latitude, :country)
  end

end
