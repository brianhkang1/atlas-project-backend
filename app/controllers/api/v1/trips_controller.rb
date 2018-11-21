class Api::V1::TripsController < ApplicationController

  before_action :find_trip, only: [:show, :update, :destroy]

  def index
    render json: Trip.all
  end

  def show
    render json: @trip
  end

  def create
    render json: Trip.create(trip_params)
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

  def trip_params
    params.require(:trip).permit(:creator_id, :location, :summary)
  end

  def find_trip
    @trip = Trip.find(params[:id])
  end

end
