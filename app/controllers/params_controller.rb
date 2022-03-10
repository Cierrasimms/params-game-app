class ParamsController < ApplicationController
    
  def name_game  
  input_name = params["name"].upcase
    if input_name.starts_with?("A")
      render json: {message: "Hey, your name starts with the first letter of the alphabet!"}
    else
     render json: {message: "#{input_name} "}
    end
  end
end
