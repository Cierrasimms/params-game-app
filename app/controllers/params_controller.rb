class ParamsController < ApplicationController
    
  def name_game  
  input_name = params["name"].upcase
    if input_name.starts_with?("A")
      render json: {message: "Hey, your name starts with the first letter of the alphabet!"}
    else
     render json: {message: "#{input_name} "}
    end
  end
    
  def number_game
    user_number_choice = params["user_number"].to_i
    winning_number = 36
    if user_number_choice < winning_number
      output_message = "You guessed too low, guess higher!"
    elsif user_number_choice > winning_number
      output_message = "You guesed too high, guess lower!"
    else
      output_message = "You guessed it! You win!"
    end
    render json: {message_to_user: output_message}
  end

end

