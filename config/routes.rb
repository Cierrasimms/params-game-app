Rails.application.routes.draw do
  
  get "/params_game" => "params#name_game"

  get "/number/*new_variable/:user_number" => "params#number_game"

  get "game/*other/:title" => "params#game"
end
