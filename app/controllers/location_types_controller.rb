class LocationTypesController < ApplicationController
def index
 locationTypes = LocationType.all
 render json: locationTypes.as_json
end 

def create 
  locationTypes = LocationType.new(
    description: params[:description]
  )
end 

def show
  locationTypes = LocationType.find_by(id: params[:id])
  render json: locationTypes.as_json
end 

def update 
  locationTypes = LocationType.find_by(id:params[:id])
  locationTypes.description = params[:description] || locationTypes.description
end 

def destroy
  locationType = LocationType.find_by(id: params[:id])
  render json: {message: "Location Type successfully destroyed."}
end 

end
