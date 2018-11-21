class Api::V1::TripLikesController < ApplicationController

def index
  render json: TripLike.all
end

def show
  render json: TripLike.find(params[:id])
end

def create
  @trip_like = TripLike.create(liked_trip_params)
  if @trip_like.persisted?
    render json: @trip_like
  else
    render json: {error: "failed to like trip"}, status: :not_acceptable
  end
end

private

def trip_like_params
  params.require(:trip_like).permit(:trip_liker_id, :liked_trip_id)
end
end
