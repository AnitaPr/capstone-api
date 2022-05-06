class UsersController < ApplicationController


def index
  users = User.all
  render json: users.as_json
end

def create
 user = User.new(
  name: params[:name],
  email: params[:email],
  password: params[:password],
  password_confirmation: params[:password_confirmation]
 )
 if user.save
  render json: { message: "User created successfully" }, status: :created
else
  render json: { errors: user.errors.full_messages }, status: :bad_request
end
end

def show 
 user = User.find_by(id: params[:id])
 render json: user.as_json
end

def update
 user = User.find_by(id: params[:id])
 user.name = params[:name] || user.name
 user.email = params[:email] || user.email
 user.password_digest = params[:password_digest] || user.password_digest
end 

def destroy
  user = User.find_by(id: params[:id])
  user.destroy
  render json: {message: "User successfully destroyed."}
end 
end
