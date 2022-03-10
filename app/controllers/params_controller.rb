class ParamsController < ApplicationController

  def name_game
    input_name = params["name"].upcase
    render json: {message: "#{input_name}!"}
  end
end
