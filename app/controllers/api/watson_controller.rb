class Api::WatsonController < ApplicationController
  def index
    response = Unirest.post(
      "https://gateway.watsonplatform.net/natural-language-understanding/api/v1/analyze?version=2018-03-19", 
      auth: {user: ENV["API_USER"], password: ENV["API_PASS"]},
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json"
      },
      parameters: {
      "text": params[:text],
      "features": {
        "sentiment": {},
        "emotion": {},
        "concepts": {},
        "keywords": {}
        }
      }.to_json)
    render json: response.body
  end
end
