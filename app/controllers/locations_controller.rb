class LocationsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

 def index
  locations = Location.all
  render json: locations.as_json
 end
 
 def create
  location = Location.new(
    name: params[:name],
    description: params[:description],
    city: params[:city],
    state: params[:state],
    location_type_id: params[:location_type_id]
  )
   location.save
   render json: location.as_json
 end 

 def show 
  location = Location.find_by(id: params[:id])
  render json: location.as_json
 end 

 def update
  location = Location.find_by(id: params[:id])
  location.name = params[:name],
  location.description = params[:description],
  location.city = params[:city],
  location.state = params[:state],
  location.location_type_id = params[:location_type_id]
 end 

 def destroy
  location = Location.find_by(id: params[:id])
  location.destroy
  render json: {message: "Location successfully destroyed."}
 end 

end
