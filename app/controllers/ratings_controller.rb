class RatingsController < ApplicationController
def index
  ratings = Rating.all
  render json: ratings.as_json
end

def create
  rating = Rating.new(
    user_id: current_user.id,
    location_id: params[:location_id],
    rating: params[:rating]
  )
  rating.save
  render json: rating.as_json
end 

def show 
  rating = Rating.find_by(id: params[:id])
  render json: rating.as_json
end 

def update
 rating = Rating.find_by(id: params[:id])
  rating.user_id = params[:user_id],
  rating.location_id = params[:location_id],
  rating.rating = params[:rating]
end 

def destroy
  rating = Rating.find_by(id: params[:id])
  rating.destroy
  render json: {message: "Rating successfully destroyed."}
end 
end
