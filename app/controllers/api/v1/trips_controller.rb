class Api::V1::TripsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]
  before_action :find_trip, only: [:show, :update, :destroy]

  def index
    render json: Trip.all
  end

  def show
    render json: @trip
  end

  def create
    new_trip = Trip.create!(creator_id: params[:creator_id], country_name: params[:country_name], summary: params[:summary])

    locationsArray = params[:locations].split("&&&,")
    params[:itinerary].split("&&&,").each_with_index{|desc, index| ItineraryDay.create!(trip_id: new_trip.id, day: index+1, description: desc, location: locationsArray[index])}

    (1..(params[:photoCount].to_i)).each{|num| Photo.create!(trip_id: new_trip.id, image_url: params["photo-#{num}"])}
    render json: new_trip
  end

  def update
    @trip.update(trip_params)
    if @trip.save
      render json: @trip, status: :accepted
    else
      render json: {errors: @trip.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    @trip.destroy
  end


  private

  # def trip_params
  #   params.permit(:creator_id, :location, :summary)
  # end

  def find_trip
    @trip = Trip.find(params[:id])
  end

end
