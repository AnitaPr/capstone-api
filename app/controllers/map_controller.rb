class MapController < ApplicationController
  def search
    # Make request to Amadeus API to get authentication token
    uri = URI('https://test.api.amadeus.com/v1/security/oauth2/token')
    params = { 
      :grant_type => "client_credentials", 
      :client_id => Rails.application.credentials.map_api.client_id,
      :client_secret => Rails.application.credentials.map_api.client_secret
    }
    # Get response (res) from Amadeus API that includes auth token.
    res = Net::HTTP.post_form(uri, params)

    data = JSON.parse(res.body)

    # Make SECOND request to Amadeus API now using the Auth token in the headers
    response = HTTP.headers("Authorization" => "Bearer #{data['access_token']}").get("https://test.api.amadeus.com/v1/reference-data/locations/pois?latitude=41.397158&longitude=2.160873&radius=5&page%5Blimit%5D=100&page%5Boffset%5D=0")

    # Parse and return response - an array of locations/attractions from the Amadeus API
    response_data = JSON.parse(response)
    render json: response_data
  end
end
