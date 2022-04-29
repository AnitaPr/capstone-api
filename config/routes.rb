Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"


  get "/locations" => "locations#index"
  post "/locations" => "locations#create"
  get "/locations/:id" => "locations#show"
  patch "/locations/:id" => "locations#update"
  delete "/locations/:id" => "locations#destroy"

  get "/location_types" => "location_types#index"
  post "/location_types" => "location_types#create"
  get "/location_types/:id" => "location_types#show"
  patch "/location_types/:id" => "location_types#update"
  delete "/location_types/:id" => "location_types#destroy"

  get "/ratings" => "ratings#index"
  post "/ratings" => "ratings#create"
  get "/ratings/:id" => "ratings#show"
  patch "/ratings/:id" => "ratings#update"
  delete "/ratings/:id" => "ratings#destroy"


end
