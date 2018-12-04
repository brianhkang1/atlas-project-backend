class Api::V1::TripLikesController < ApplicationController

skip_before_action :authorized, only: [:index]

def index
  render json: TripLike.all
end

def create
  @trip_like = TripLike.create(trip_like_params)
  if @trip_like.persisted?
    render json: @trip_like
  else
    render json: {error: "failed to like trip"}, status: :not_acceptable
  end
end

def destroy
  @trip_like = TripLike.find(params[:id])
  @trip_like.destroy
end


private

  def trip_like_params
    params.require(:trip_like).permit(:trip_liker_id, :liked_trip_id)
  end

end
