class Api::V1::ItineraryDaysController < ApplicationController

  def create
    render json: ItineraryDay.create(itinerary_day_params)
  end


  private

  def itinerary_day_params
    params.require(:itinerary_day).permit(:trip_id, :day, :description)
  end

end
